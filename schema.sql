-- ============================================================================
-- Integrated Institutional Transport Tracking System - Database Schema (PostgreSQL)
-- ============================================================================

DROP TABLE IF EXISTS audit_logs CASCADE;
DROP TABLE IF EXISTS maintenance_logs CASCADE;
DROP TABLE IF EXISTS incidents CASCADE;
DROP TABLE IF EXISTS absence_requests CASCADE;
DROP TABLE IF EXISTS attendance_logs CASCADE;
DROP TABLE IF EXISTS bus_passes CASCADE;
DROP TABLE IF EXISTS student_allocations CASCADE;
DROP TABLE IF EXISTS trip_locations CASCADE;
DROP TABLE IF EXISTS trips CASCADE;
DROP TABLE IF EXISTS route_stops CASCADE;
DROP TABLE IF EXISTS routes CASCADE;
DROP TABLE IF EXISTS drivers CASCADE;
DROP TABLE IF EXISTS vehicles CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- 1. Users & Authentication
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role VARCHAR(50) NOT NULL CHECK (role IN ('admin', 'manager', 'driver', 'student')),
    phone VARCHAR(50),
    department VARCHAR(100),
    roll_or_emp_id VARCHAR(50),
    status VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active', 'inactive', 'suspended')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Vehicles / Fleet
CREATE TABLE vehicles (
    id SERIAL PRIMARY KEY,
    bus_number VARCHAR(50) UNIQUE NOT NULL,
    registration_plate VARCHAR(50) UNIQUE NOT NULL,
    capacity INTEGER NOT NULL CHECK (capacity > 0),
    model VARCHAR(100) NOT NULL,
    fuel_type VARCHAR(50) DEFAULT 'Diesel',
    status VARCHAR(30) DEFAULT 'active' CHECK (status IN ('active', 'maintenance', 'out_of_service')),
    fitness_expiry DATE,
    insurance_expiry DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 3. Drivers
CREATE TABLE drivers (
    id SERIAL PRIMARY KEY,
    user_id INTEGER UNIQUE NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    license_number VARCHAR(50) UNIQUE NOT NULL,
    license_expiry DATE,
    experience_years INTEGER DEFAULT 0,
    assigned_vehicle_id INTEGER REFERENCES vehicles(id) ON DELETE SET NULL,
    shift VARCHAR(30) DEFAULT 'morning' CHECK (shift IN ('morning', 'evening', 'both')),
    status VARCHAR(30) DEFAULT 'available' CHECK (status IN ('available', 'on_duty', 'on_leave')),
    emergency_contact VARCHAR(50)
);

-- 4. Routes
CREATE TABLE routes (
    id SERIAL PRIMARY KEY,
    route_name VARCHAR(150) NOT NULL,
    route_code VARCHAR(50) UNIQUE NOT NULL,
    start_location VARCHAR(150) NOT NULL,
    end_location VARCHAR(150) NOT NULL,
    total_distance_km DECIMAL(6,2) DEFAULT 0.0,
    estimated_duration_mins INTEGER DEFAULT 45,
    default_vehicle_id INTEGER REFERENCES vehicles(id) ON DELETE SET NULL,
    default_driver_id INTEGER REFERENCES drivers(id) ON DELETE SET NULL,
    status VARCHAR(20) DEFAULT 'active' CHECK (status IN ('active', 'inactive')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Route Stops (sequenced)
CREATE TABLE route_stops (
    id SERIAL PRIMARY KEY,
    route_id INTEGER NOT NULL REFERENCES routes(id) ON DELETE CASCADE,
    stop_name VARCHAR(150) NOT NULL,
    stop_order INTEGER NOT NULL,
    latitude DECIMAL(10, 6) NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL,
    morning_pickup_time VARCHAR(20),
    evening_drop_time VARCHAR(20),
    CONSTRAINT unique_route_stop_order UNIQUE (route_id, stop_order)
);

-- 6. Trips (Daily Operations & Scheduling)
CREATE TABLE trips (
    id SERIAL PRIMARY KEY,
    trip_code VARCHAR(50) UNIQUE NOT NULL,
    route_id INTEGER NOT NULL REFERENCES routes(id) ON DELETE CASCADE,
    vehicle_id INTEGER NOT NULL REFERENCES vehicles(id),
    driver_id INTEGER NOT NULL REFERENCES drivers(id),
    trip_type VARCHAR(30) NOT NULL CHECK (trip_type IN ('morning_pickup', 'evening_drop', 'special')),
    trip_date DATE NOT NULL,
    status VARCHAR(30) DEFAULT 'scheduled' CHECK (status IN ('scheduled', 'in_progress', 'completed', 'delayed', 'cancelled')),
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    current_stop_order INTEGER DEFAULT 0,
    notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 7. Live GPS Tracking Telemetry
CREATE TABLE trip_locations (
    id SERIAL PRIMARY KEY,
    trip_id INTEGER NOT NULL REFERENCES trips(id) ON DELETE CASCADE,
    latitude DECIMAL(10, 6) NOT NULL,
    longitude DECIMAL(10, 6) NOT NULL,
    speed_kmh DECIMAL(5, 2) DEFAULT 0.0,
    heading DECIMAL(5, 2) DEFAULT 0.0,
    next_stop_name VARCHAR(150),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 8. Student Transport Allocations (with capacity limit validation)
CREATE TABLE student_allocations (
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    route_id INTEGER NOT NULL REFERENCES routes(id) ON DELETE CASCADE,
    vehicle_id INTEGER NOT NULL REFERENCES vehicles(id) ON DELETE CASCADE,
    pickup_stop_id INTEGER NOT NULL REFERENCES route_stops(id),
    drop_stop_id INTEGER REFERENCES route_stops(id),
    seat_number VARCHAR(20),
    allocation_status VARCHAR(30) DEFAULT 'approved' CHECK (allocation_status IN ('approved', 'pending', 'rejected', 'cancelled')),
    allocated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT unique_active_student_allocation UNIQUE (student_id, allocation_status)
);

-- 9. Digital Bus Passes
CREATE TABLE bus_passes (
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    allocation_id INTEGER NOT NULL REFERENCES student_allocations(id) ON DELETE CASCADE,
    pass_number VARCHAR(50) UNIQUE NOT NULL,
    qr_code_token VARCHAR(255) NOT NULL,
    valid_from DATE NOT NULL,
    valid_until DATE NOT NULL,
    status VARCHAR(30) DEFAULT 'active' CHECK (status IN ('active', 'expired', 'suspended')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 10. Attendance Logs
CREATE TABLE attendance_logs (
    id SERIAL PRIMARY KEY,
    trip_id INTEGER NOT NULL REFERENCES trips(id) ON DELETE CASCADE,
    student_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    stop_id INTEGER REFERENCES route_stops(id),
    type VARCHAR(20) DEFAULT 'boarded' CHECK (type IN ('boarded', 'dropped')),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    verified_by_driver BOOLEAN DEFAULT TRUE
);

-- 11. Student Absence Notifications
CREATE TABLE absence_requests (
    id SERIAL PRIMARY KEY,
    student_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
    absence_date DATE NOT NULL,
    trip_type VARCHAR(30) DEFAULT 'both' CHECK (trip_type IN ('morning_pickup', 'evening_drop', 'both')),
    reason TEXT,
    status VARCHAR(30) DEFAULT 'notified' CHECK (status IN ('notified', 'acknowledged')),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 12. Incidents & Delays & Breakdown Logs
CREATE TABLE incidents (
    id SERIAL PRIMARY KEY,
    trip_id INTEGER REFERENCES trips(id) ON DELETE SET NULL,
    reported_by INTEGER NOT NULL REFERENCES users(id),
    incident_type VARCHAR(50) NOT NULL CHECK (incident_type IN ('breakdown', 'traffic_delay', 'accident', 'medical_emergency', 'bad_weather', 'sos')),
    severity VARCHAR(20) DEFAULT 'medium' CHECK (severity IN ('low', 'medium', 'high', 'critical')),
    description TEXT NOT NULL,
    status VARCHAR(30) DEFAULT 'open' CHECK (status IN ('open', 'investigating', 'resolved')),
    resolution_notes TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    resolved_at TIMESTAMP
);

-- 13. Vehicle Maintenance & Service Records
CREATE TABLE maintenance_logs (
    id SERIAL PRIMARY KEY,
    vehicle_id INTEGER NOT NULL REFERENCES vehicles(id) ON DELETE CASCADE,
    service_date DATE NOT NULL,
    service_type VARCHAR(100) NOT NULL,
    cost DECIMAL(10, 2) DEFAULT 0.0,
    description TEXT,
    performed_by VARCHAR(150),
    next_service_due DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 14. Audit Logs
CREATE TABLE audit_logs (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE SET NULL,
    action VARCHAR(100) NOT NULL,
    entity_type VARCHAR(50) NOT NULL,
    entity_id VARCHAR(50),
    details TEXT,
    ip_address VARCHAR(50),
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 15. Notifications & Announcements
CREATE TABLE notifications (
    id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
    target_role VARCHAR(50) DEFAULT 'all',
    route_id INTEGER REFERENCES routes(id) ON DELETE CASCADE,
    category VARCHAR(50) NOT NULL DEFAULT 'announcement',
    title VARCHAR(200) NOT NULL,
    message TEXT NOT NULL,
    priority VARCHAR(20) DEFAULT 'medium' CHECK (priority IN ('low', 'medium', 'high', 'critical')),
    is_read BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
