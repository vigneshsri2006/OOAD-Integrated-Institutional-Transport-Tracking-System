<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>IITTS — Integrated Institutional Transport Tracking System</title>
  <link rel="stylesheet" href="/css/styles.css">
  <!-- Leaflet CSS for Map -->
  <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin=""/>
</head>
<body>

  <!-- 1. LOGIN VIEW (Full Screen Institutional Entry) -->
  <div id="view-login" style="width: 100vw; min-height: 100vh; display: flex; align-items: center; justify-content: center; background: radial-gradient(circle at top right, #1e3a8a, #0f172a); padding: 1.5rem;">
    <div class="card" style="max-width: 500px; width: 100%; border-radius: var(--radius-xl); box-shadow: 0 25px 50px -12px rgba(0, 0, 0, 0.4); border: 1px solid rgba(255, 255, 255, 0.1); background: #ffffff; padding: 2.25rem;">
      <div style="text-align: center; margin-bottom: 2rem;">
        <div style="width: 56px; height: 56px; background: linear-gradient(135deg, #1e3a8a, #0d9488); border-radius: var(--radius-lg); display: inline-flex; align-items: center; justify-content: center; font-size: 1.75rem; box-shadow: 0 10px 20px rgba(30, 58, 138, 0.3); margin-bottom: 1rem;">
          🚌
        </div>
        <h2 style="font-size: 1.6rem; font-weight: 800; color: var(--primary-900); letter-spacing: -0.03em;">CampusTransit Portal</h2>
        <div style="font-size: 0.75rem; text-transform: uppercase; font-weight: 700; color: var(--teal-600); letter-spacing: 0.08em; margin-top: 0.25rem;">
          Integrated Institutional Transport Tracking System (IITTS)
        </div>
      </div>

      <form id="form-login" onsubmit="auth.handleLogin(event)">
        <div class="form-group">
          <label for="login-email">Institutional Email</label>
          <input type="email" id="login-email" class="form-control" required placeholder="user@transport.edu">
        </div>
        <div class="form-group">
          <label for="login-password">Password</label>
          <input type="password" id="login-password" class="form-control" required placeholder="••••••••">
        </div>
        <button type="submit" class="btn btn-primary" style="width: 100%; padding: 0.75rem; font-size: 0.95rem; margin-top: 0.5rem;">
          Sign In to Portal
        </button>
      </form>

      <div style="margin-top: 2rem; border-top: 1px solid var(--border-color); padding-top: 1.5rem;">
        <div style="font-size: 0.75rem; font-weight: 700; color: var(--text-muted); text-transform: uppercase; letter-spacing: 0.05em; margin-bottom: 0.75rem; text-align: center;">
          ⚡ 1-Click Demo Evaluation Logins
        </div>
        <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.6rem;">
          <button class="btn btn-secondary btn-sm" onclick="auth.quickLogin('admin@transport.edu', 'Admin@123')">
            🛡️ Administrator
          </button>
          <button class="btn btn-secondary btn-sm" onclick="auth.quickLogin('manager@transport.edu', 'Manager@123')">
            📋 Transport Manager
          </button>
          <button class="btn btn-secondary btn-sm" onclick="auth.quickLogin('driver@transport.edu', 'Driver@123')">
            🚌 Lead Driver
          </button>
          <button class="btn btn-secondary btn-sm" onclick="auth.quickLogin('student@transport.edu', 'Student@123')">
            🎓 Student
          </button>
        </div>
      </div>
    </div>
  </div>

  <!-- 2. AUTHENTICATED APP LAYOUT (Sidebar + Main Workspace) -->
  <div id="app-layout" style="display: none;">

    <!-- Left Persistent Navigation Sidebar -->
    <aside class="app-sidebar" id="app-sidebar">
      <!-- Sidebar Brand -->
      <div class="sidebar-header">
        <a href="#" class="sidebar-brand" onclick="app.showHome(); return false;">
          <div class="sidebar-logo">🚌</div>
          <div>
            <div class="sidebar-title">IITTS</div>
            <div class="sidebar-subtitle">Campus Transport</div>
          </div>
        </a>
      </div>

      <!-- Role-Based Navigation Items -->
      <nav class="sidebar-nav">
        <!-- Admin Navigation -->
        <div id="nav-group-admin" style="display: none; flex-direction: column; gap: 0.35rem;">
          <div class="nav-section-label">Administration</div>
          <button class="nav-item active" onclick="admin.showTab('users', this)">
            <span class="nav-icon">👥</span>
            <span>User Directory</span>
          </button>
          <button class="nav-item" onclick="admin.showTab('audit', this)">
            <span class="nav-icon">📜</span>
            <span>Security & Audit</span>
          </button>
          <button class="nav-item" onclick="admin.showTab('system', this)">
            <span class="nav-icon">⚙️</span>
            <span>System Health</span>
          </button>
        </div>

        <!-- Transport Manager Navigation -->
        <div id="nav-group-manager" style="display: none; flex-direction: column; gap: 0.35rem;">
          <div class="nav-section-label">Operations</div>
          <button class="nav-item active" onclick="manager.showTab('overview', this)">
            <span class="nav-icon">📊</span>
            <span>Dashboard</span>
          </button>
          <button class="nav-item" onclick="manager.showTab('fleet', this)">
            <span class="nav-icon">🚌</span>
            <span>Fleet & Vehicles</span>
          </button>
          <button class="nav-item" onclick="manager.showTab('routes', this)">
            <span class="nav-icon">🗺️</span>
            <span>Routes & Stops</span>
          </button>
          <button class="nav-item" onclick="manager.showTab('trips', this)">
            <span class="nav-icon">📋</span>
            <span>Trip Dispatch</span>
          </button>
          <button class="nav-item" onclick="manager.showTab('allocations', this)">
            <span class="nav-icon">💺</span>
            <span>Pass Allocations</span>
          </button>
          <button class="nav-item" onclick="manager.showTab('incidents', this)">
            <span class="nav-icon">⚠️</span>
            <span>Incident Alerts</span>
          </button>
        </div>

        <!-- Driver Navigation -->
        <div id="nav-group-driver" style="display: none; flex-direction: column; gap: 0.35rem;">
          <div class="nav-section-label">Driver Console</div>
          <button class="nav-item active" onclick="driver.showTab('active-trip', this)">
            <span class="nav-icon">🚍</span>
            <span>Active Trip & GPS</span>
          </button>
          <button class="nav-item" onclick="driver.showTab('manifest', this)">
            <span class="nav-icon">📋</span>
            <span>Passenger Roster</span>
          </button>
          <button class="nav-item" onclick="driver.showTab('all-trips', this)">
            <span class="nav-icon">📅</span>
            <span>My Schedule</span>
          </button>
        </div>

        <!-- Student Navigation -->
        <div id="nav-group-student" style="display: none; flex-direction: column; gap: 0.35rem;">
          <div class="nav-section-label">Student Commute</div>
          <button class="nav-item active" onclick="student.showTab('tracking', this)">
            <span class="nav-icon">📍</span>
            <span>Live Tracking & ETA</span>
          </button>
          <button class="nav-item" onclick="student.showTab('bus-pass', this)">
            <span class="nav-icon">🎫</span>
            <span>Digital Bus Pass</span>
          </button>
          <button class="nav-item" onclick="student.showTab('absence', this)">
            <span class="nav-icon">📝</span>
            <span>Report Absence</span>
          </button>
          <button class="nav-item" onclick="student.showTab('safety', this)">
            <span class="nav-icon">🚨</span>
            <span>Emergency SOS</span>
          </button>
        </div>
      </nav>

      <!-- Sidebar User Profile Footer -->
      <div class="sidebar-footer">
        <div class="user-profile-widget">
          <div class="user-avatar" id="sidebar-user-avatar">U</div>
          <div class="user-meta">
            <div class="user-name-text" id="sidebar-user-name">User Name</div>
            <div class="user-role-text" id="sidebar-user-role">Role</div>
          </div>
          <button class="btn btn-sm btn-danger" onclick="auth.logout()" title="Sign Out">✕</button>
        </div>
      </div>
    </aside>

    <!-- Main Content Area -->
    <div class="app-main">
      <!-- Topbar Header -->
      <header class="app-topbar">
        <div class="topbar-left">
          <button class="mobile-toggle" onclick="app.toggleSidebar()">☰</button>
          <div class="breadcrumbs">
            <span>Campus</span>
            <span>/</span>
            <span id="breadcrumb-section">Operations</span>
            <span>/</span>
            <span class="current" id="breadcrumb-current">Dashboard</span>
          </div>
        </div>

        <div class="topbar-right">
          <!-- System Status -->
          <div class="system-status-indicator">
            <div class="pulse-dot"></div>
            <span>System Active</span>
          </div>

          <!-- Quick Demo Role Switcher Segmented Control -->
          <div class="role-switcher-segmented">
            <span>Demo:</span>
            <button class="segmented-btn" id="seg-admin" onclick="auth.switchRole('admin')">Admin</button>
            <button class="segmented-btn" id="seg-manager" onclick="auth.switchRole('manager')">Manager</button>
            <button class="segmented-btn" id="seg-driver" onclick="auth.switchRole('driver')">Driver</button>
            <button class="segmented-btn" id="seg-student" onclick="auth.switchRole('student')">Student</button>
          </div>

          <!-- Interactive Notifications Bell -->
          <div class="notification-btn-wrapper">
            <button class="topbar-icon-btn" onclick="app.toggleNotifications()">
              🔔
              <span class="notification-count-badge" id="topbar-notif-count" style="display: none;">0</span>
            </button>
            <div class="notifications-dropdown" id="notifications-dropdown">
              <div class="dropdown-header">
                <span class="dropdown-title">System Announcements & Alerts</span>
                <button class="btn btn-sm btn-secondary" onclick="app.loadNotifications()">Refresh</button>
              </div>
              <div class="dropdown-list" id="dropdown-notif-list">
                <div style="padding: 1.5rem; text-align: center; color: var(--text-muted); font-size: 0.85rem;">
                  Loading alerts...
                </div>
              </div>
            </div>
          </div>
        </div>
      </header>

      <!-- App Content Workspace -->
      <main class="app-content">

        <!-- ================================================================ -->
        <!-- VIEW 1: ADMINISTRATOR WORKSPACE                                  -->
        <!-- ================================================================ -->
        <div id="view-admin" style="display: none;">
          <!-- Page Header -->
          <div class="page-header">
            <div>
              <h1 class="page-title">Institutional User & Role Governance</h1>
              <p class="page-description">Manage user credentials, role permissions, and examine security audit records.</p>
            </div>
            <div class="page-actions">
              <button class="btn btn-primary" onclick="admin.openAddUserModal()">+ Add User Account</button>
            </div>
          </div>

          <!-- Tab: Users -->
          <div id="admin-tab-users">
            <div class="card">
              <div class="card-header">
                <div class="card-title">👥 User Directory & RBAC Privileges</div>
                <div style="display: flex; gap: 0.75rem; flex-wrap: wrap;">
                  <input type="text" id="admin-user-search" class="form-control" style="max-width: 260px;" placeholder="Search by name, email, roll ID..." oninput="admin.loadUsers()">
                  <select id="admin-user-role-filter" class="form-control" style="max-width: 170px;" onchange="admin.loadUsers()">
                    <option value="">All Roles</option>
                    <option value="admin">Administrator</option>
                    <option value="manager">Transport Manager</option>
                    <option value="driver">Driver</option>
                    <option value="student">Student</option>
                  </select>
                </div>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>User ID</th>
                      <th>Full Name</th>
                      <th>Institutional Email</th>
                      <th>Access Tier</th>
                      <th>Department / Roll</th>
                      <th>Phone</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="admin-users-table-body">
                    <tr><td colspan="8" style="text-align: center; padding: 2rem;">Loading users...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: Audit Logs -->
          <div id="admin-tab-audit" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div class="card-title">📜 Security Audit Trail & Event Logs</div>
                <button class="btn btn-secondary btn-sm" onclick="admin.loadAuditLogs()">Refresh Log History</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Timestamp</th>
                      <th>Initiating User</th>
                      <th>Action Code</th>
                      <th>Entity Reference</th>
                      <th>Event Details</th>
                      <th>Client IP</th>
                    </tr>
                  </thead>
                  <tbody id="admin-audit-table-body">
                    <tr><td colspan="6" style="text-align: center; padding: 2rem;">Loading audit trail...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: System Health -->
          <div id="admin-tab-system" style="display: none;">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 1.5rem;">
              <div class="card">
                <div class="card-header"><div class="card-title">⚙️ Server & Database Infrastructure</div></div>
                <div class="card-body">
                  <p style="margin-bottom: 0.5rem;"><strong>Service:</strong> Integrated Institutional Transport Tracking System (IITTS)</p>
                  <p style="margin-bottom: 0.5rem;"><strong>Active Database:</strong> <span id="admin-db-type" class="badge badge-teal">SQLITE</span></p>
                  <p style="margin-bottom: 0.5rem;"><strong>Engine Connection:</strong> <span class="badge badge-success">Online & Healthy</span></p>
                  <p style="margin-bottom: 0.5rem;"><strong>Server Time:</strong> <span id="admin-system-time" style="font-family: var(--font-mono); font-size: 0.85rem;"></span></p>
                </div>
              </div>
              <div class="card">
                <div class="card-header"><div class="card-title">🔄 Test Fixtures & Maintenance</div></div>
                <div class="card-body">
                  <p style="font-size: 0.85rem; color: var(--text-secondary); margin-bottom: 1.25rem;">
                    Re-seed development fixtures with realistic fleet vehicles, routes, drivers, and student allocations.
                  </p>
                  <button class="btn btn-secondary" onclick="admin.reseedDatabase()">Re-Seed Sample Dataset</button>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- ================================================================ -->
        <!-- VIEW 2: TRANSPORT MANAGER WORKSPACE                              -->
        <!-- ================================================================ -->
        <div id="view-manager" style="display: none;">
          <!-- Page Header -->
          <div class="page-header">
            <div>
              <h1 class="page-title">Transport Operations & Fleet Dispatch</h1>
              <p class="page-description">Oversee campus fleet capacity, route corridors, student seat allocations, and safety alerts.</p>
            </div>
            <div class="page-actions">
              <button class="btn btn-secondary" onclick="manager.exportCsv('trips')">📥 Export Trips CSV</button>
              <button class="btn btn-secondary" onclick="manager.exportCsv('attendance')">📥 Export Attendance CSV</button>
              <button class="btn btn-primary" onclick="manager.openDispatchTripModal()">+ Schedule Trip</button>
            </div>
          </div>

          <!-- Tab: Overview Dashboard -->
          <div id="mgr-tab-overview">
            <div class="stats-grid">
              <div class="metric-card">
                <div class="metric-data">
                  <span class="metric-value" id="stat-active-buses">0</span>
                  <span class="metric-label">Active Buses in Fleet</span>
                  <span class="metric-sub">Operational & in service</span>
                </div>
                <div class="metric-icon-box">🚌</div>
              </div>
              <div class="metric-card">
                <div class="metric-data">
                  <span class="metric-value" id="stat-trips-today">0</span>
                  <span class="metric-label">Trips Running Today</span>
                  <span class="metric-sub">Morning & evening shifts</span>
                </div>
                <div class="metric-icon-box teal">🛣️</div>
              </div>
              <div class="metric-card">
                <div class="metric-data">
                  <span class="metric-value" id="stat-students-allocated">0</span>
                  <span class="metric-label">Allocated Commuters</span>
                  <span class="metric-sub">Active approved passes</span>
                </div>
                <div class="metric-icon-box success">🎓</div>
              </div>
              <div class="metric-card">
                <div class="metric-data">
                  <span class="metric-value" id="stat-fleet-occupancy">0%</span>
                  <span class="metric-label">Fleet Seat Utilization</span>
                  <span class="metric-sub">Strict capacity enforced</span>
                </div>
                <div class="metric-icon-box amber">📈</div>
              </div>
            </div>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(360px, 1fr)); gap: 1.5rem;">
              <div class="card">
                <div class="card-header">
                  <div class="card-title">🟢 Live In-Progress Commute Trips</div>
                  <button class="btn btn-secondary btn-sm" onclick="manager.loadActiveTrips()">Refresh</button>
                </div>
                <div class="table-responsive">
                  <table>
                    <thead>
                      <tr>
                        <th>Trip Code</th>
                        <th>Route Corridor</th>
                        <th>Bus</th>
                        <th>Lead Driver</th>
                        <th>Approaching Stop</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody id="mgr-active-trips-table">
                      <tr><td colspan="6" style="text-align: center; padding: 2rem;">No active trips right now.</td></tr>
                    </tbody>
                  </table>
                </div>
              </div>

              <div class="card">
                <div class="card-header">
                  <div class="card-title">⚠️ Open Incident Reports & Delays</div>
                  <button class="btn btn-secondary btn-sm" onclick="manager.loadIncidents()">Refresh</button>
                </div>
                <div class="table-responsive">
                  <table>
                    <thead>
                      <tr>
                        <th>Category</th>
                        <th>Severity</th>
                        <th>Description</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody id="mgr-recent-incidents-table">
                      <tr><td colspan="4" style="text-align: center; padding: 2rem;">No open safety alerts.</td></tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <!-- Tab: Fleet -->
          <div id="mgr-tab-fleet" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div>
                  <div class="card-title">🚌 Institutional Vehicles & Maintenance Status</div>
                  <div class="card-subtitle">Manage capacity, fitness certifications, and service records.</div>
                </div>
                <button class="btn btn-primary" onclick="manager.openAddVehicleModal()">+ Add New Vehicle</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Bus Number</th>
                      <th>License Plate</th>
                      <th>Make & Model</th>
                      <th>Fuel Type</th>
                      <th>Seating Capacity</th>
                      <th>Seat Occupancy</th>
                      <th>Assigned Driver</th>
                      <th>Operational Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="mgr-fleet-table-body">
                    <tr><td colspan="9" style="text-align: center; padding: 2rem;">Loading fleet...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: Routes -->
          <div id="mgr-tab-routes" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div>
                  <div class="card-title">🗺️ Route Corridors & Sequenced Stops</div>
                  <div class="card-subtitle">Define route paths, ordered stops with GPS coordinates, and arrival times.</div>
                </div>
                <button class="btn btn-primary" onclick="manager.openAddRouteModal()">+ Create Route</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Code</th>
                      <th>Route Name</th>
                      <th>Terminal Points</th>
                      <th>Total Distance</th>
                      <th>Stops</th>
                      <th>Default Bus</th>
                      <th>Assigned Driver</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="mgr-routes-table-body">
                    <tr><td colspan="8" style="text-align: center; padding: 2rem;">Loading routes...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: Trips -->
          <div id="mgr-tab-trips" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div>
                  <div class="card-title">📋 Daily Trip Dispatch & Execution Schedule</div>
                  <div class="card-subtitle">Schedule, dispatch, monitor, and cancel commute runs.</div>
                </div>
                <button class="btn btn-primary" onclick="manager.openDispatchTripModal()">+ Schedule Trip</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Trip Code</th>
                      <th>Date</th>
                      <th>Shift Type</th>
                      <th>Route</th>
                      <th>Vehicle</th>
                      <th>Driver</th>
                      <th>Boarded / Total</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="mgr-trips-table-body">
                    <tr><td colspan="9" style="text-align: center; padding: 2rem;">Loading trips...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: Student Allocations -->
          <div id="mgr-tab-allocations" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div>
                  <div class="card-title">💺 Student Pass Allocations & Capacity Control</div>
                  <div class="card-subtitle">Automatic digital pass generation with strict vehicle capacity limits.</div>
                </div>
                <button class="btn btn-primary" onclick="manager.openAllocateStudentModal()">+ Allocate Student</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Student Name</th>
                      <th>Roll / Emp ID</th>
                      <th>Route Corridor</th>
                      <th>Vehicle</th>
                      <th>Designated Pickup Stop</th>
                      <th>Seat No</th>
                      <th>Bus Pass Code</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="mgr-allocations-table-body">
                    <tr><td colspan="9" style="text-align: center; padding: 2rem;">Loading allocations...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: Incidents -->
          <div id="mgr-tab-incidents" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div class="card-title">⚠️ Incident Reports & Operational Delays</div>
                <button class="btn btn-secondary btn-sm" onclick="manager.loadIncidents()">Refresh Alerts</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>ID</th>
                      <th>Type</th>
                      <th>Severity</th>
                      <th>Reported By</th>
                      <th>Bus / Trip</th>
                      <th>Incident Summary</th>
                      <th>Status</th>
                      <th>Actions</th>
                    </tr>
                  </thead>
                  <tbody id="mgr-incidents-table-body">
                    <tr><td colspan="8" style="text-align: center; padding: 2rem;">Loading incidents...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

        <!-- ================================================================ -->
        <!-- VIEW 3: DRIVER MOBILE-FRIENDLY CONSOLE                           -->
        <!-- ================================================================ -->
        <div id="view-driver" style="display: none;">
          <!-- Page Header -->
          <div class="page-header">
            <div>
              <h1 class="page-title">Driver Console & Navigation Deck</h1>
              <p class="page-description">Manage active trip lifecycle, broadcast GPS coordinates, and inspect stop manifests.</p>
            </div>
            <div class="page-actions">
              <button class="btn btn-danger btn-sm" onclick="driver.openReportIncidentModal()">⚠️ Report Delay / Issue</button>
            </div>
          </div>

          <!-- Tab: Active Trip Controls -->
          <div id="drv-tab-active-trip">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(360px, 1fr)); gap: 1.5rem;">
              <!-- Current Trip Status Card -->
              <div class="card">
                <div class="card-header">
                  <div class="card-title">🚍 Current Assigned Trip</div>
                  <span id="drv-trip-status-badge" class="badge badge-warning">SCHEDULED</span>
                </div>
                <div class="card-body">
                  <div style="margin-bottom: 1.25rem; display: flex; flex-direction: column; gap: 0.5rem; font-size: 0.9rem;">
                    <div><strong>Trip Code:</strong> <span id="drv-trip-code" style="font-family: var(--font-mono); font-weight: 700;">-</span></div>
                    <div><strong>Route:</strong> <span id="drv-route-name">-</span></div>
                    <div><strong>Vehicle:</strong> <span id="drv-bus-number" class="badge badge-teal">-</span></div>
                    <div><strong>Schedule:</strong> <span id="drv-trip-time">-</span></div>
                  </div>

                  <div style="display: flex; gap: 0.75rem; flex-wrap: wrap;">
                    <button id="btn-driver-start-trip" class="btn btn-success" onclick="driver.startTrip()">▶️ Start Trip</button>
                    <button id="btn-driver-complete-trip" class="btn btn-danger" onclick="driver.completeTrip()" disabled>⏹️ End / Complete Trip</button>
                  </div>
                </div>
              </div>

              <!-- GPS Telemetry Broadcaster Card -->
              <div class="card">
                <div class="card-header">
                  <div class="card-title">📍 Live GPS Telemetry Broadcaster</div>
                  <span class="badge badge-success">GPS ACTIVE</span>
                </div>
                <div class="card-body">
                  <p style="font-size: 0.85rem; color: var(--text-secondary); margin-bottom: 1rem;">
                    Broadcast your position in real-time to student tracking maps.
                  </p>
                  <div class="form-group">
                    <label>Approaching Next Stop</label>
                    <select id="drv-next-stop-select" class="form-control" onchange="driver.onStopSelectChange()"></select>
                  </div>
                  <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 0.75rem; margin-bottom: 1.25rem;">
                    <div>
                      <label style="font-size: 0.8rem; font-weight: 700;">Speed (km/h)</label>
                      <input type="number" id="drv-gps-speed" class="form-control" value="38" min="0" max="90">
                    </div>
                    <div>
                      <label style="font-size: 0.8rem; font-weight: 700;">Simulation Mode</label>
                      <button id="btn-driver-sim-toggle" class="btn btn-secondary" style="width: 100%;" onclick="driver.toggleAutoSimulation()">
                        ▶️ Start Auto-Ping
                      </button>
                    </div>
                  </div>
                  <button class="btn btn-primary" style="width: 100%;" onclick="driver.sendManualGpsPing()">
                    📍 Broadcast Location Ping Now
                  </button>
                </div>
              </div>
            </div>
          </div>

          <!-- Tab: Passenger Manifest & Absences -->
          <div id="drv-tab-manifest" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div>
                  <div class="card-title">📋 Sequenced Stop Manifest & Boarding Roster</div>
                  <div class="card-subtitle">Students with approved absence notices are prominently highlighted in red to save commute time.</div>
                </div>
                <button class="btn btn-secondary btn-sm" onclick="driver.loadManifest()">Refresh Manifest</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Stop Sequence</th>
                      <th>Student Commuter</th>
                      <th>Roll ID / Contact</th>
                      <th>Seat</th>
                      <th>Attendance Status</th>
                      <th>Boarding Check-In</th>
                    </tr>
                  </thead>
                  <tbody id="drv-manifest-table-body">
                    <tr><td colspan="6" style="text-align: center; padding: 2rem;">Select an active trip to view manifest.</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>

          <!-- Tab: All Assigned Trips -->
          <div id="drv-tab-all-trips" style="display: none;">
            <div class="card">
              <div class="card-header">
                <div class="card-title">📅 My Assigned Shift Schedule</div>
                <button class="btn btn-secondary btn-sm" onclick="driver.loadMyTrips()">Refresh Schedule</button>
              </div>
              <div class="table-responsive">
                <table>
                  <thead>
                    <tr>
                      <th>Trip Code</th>
                      <th>Date</th>
                      <th>Shift Type</th>
                      <th>Route Corridor</th>
                      <th>Bus Number</th>
                      <th>Allocated Passengers</th>
                      <th>Trip Status</th>
                      <th>Action</th>
                    </tr>
                  </thead>
                  <tbody id="drv-my-trips-table-body">
                    <tr><td colspan="8" style="text-align: center; padding: 2rem;">Loading trips...</td></tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>

        <!-- ================================================================ -->
        <!-- VIEW 4: STUDENT COMMUTE PORTAL                                   -->
        <!-- ================================================================ -->
        <div id="view-student" style="display: none;">
          <!-- Page Header -->
          <div class="page-header">
            <div>
              <h1 class="page-title">Student Commute & Live Bus Radar</h1>
              <p class="page-description">Real-time bus tracking, dynamic arrival countdowns, digital bus pass, and absence requests.</p>
            </div>
            <div class="page-actions">
              <button class="btn btn-danger" onclick="student.showTab('safety')">🚨 Emergency SOS</button>
            </div>
          </div>

          <!-- Tab: Live Tracking & Dynamic ETA -->
          <div id="stu-tab-tracking">
            <!-- Dynamic ETA Card -->
            <div class="eta-card" id="stu-eta-card">
              <div>
                <div style="font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.08em; color: var(--teal-700); font-weight: 700;">
                  ESTIMATED ARRIVAL AT YOUR PICKUP STOP
                </div>
                <div style="font-size: 1.75rem; font-weight: 800; color: #047857; letter-spacing: -0.02em;" id="stu-eta-countdown">
                  Calculating ETA...
                </div>
                <div style="font-size: 0.85rem; color: var(--teal-700); font-weight: 600;" id="stu-stop-info">
                  Stop: Loading stop...
                </div>
              </div>
              <div style="text-align: right;">
                <div style="font-size: 0.75rem; text-transform: uppercase; color: var(--teal-700); font-weight: 600;">Assigned Bus</div>
                <div style="font-size: 1.5rem; font-weight: 800; color: #047857;" id="stu-bus-num">BUS-101</div>
                <span class="badge badge-success" id="stu-trip-live-badge">TRIP IN PROGRESS</span>
              </div>
            </div>

            <!-- Leaflet Interactive Map -->
            <div id="map-container">
              <div id="leaflet-map" style="width: 100%; height: 100%;"></div>
            </div>

            <!-- Route & Assigned Driver Details -->
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 1.5rem;">
              <div class="card">
                <div class="card-header"><div class="card-title">📍 Designated Stop & Timetable</div></div>
                <div class="card-body" style="display: flex; flex-direction: column; gap: 0.5rem; font-size: 0.9rem;">
                  <div><strong>Route:</strong> <span id="stu-route-name">-</span></div>
                  <div><strong>Your Pickup Stop:</strong> <span id="stu-pickup-stop" class="badge badge-teal">-</span></div>
                  <div><strong>Morning Pickup Time:</strong> <span id="stu-pickup-time" style="font-weight: 700;">-</span></div>
                  <div><strong>Campus Drop Terminal:</strong> <span id="stu-drop-stop">-</span></div>
                </div>
              </div>

              <div class="card">
                <div class="card-header"><div class="card-title">👨‍✈️ Driver & Bus Assignment</div></div>
                <div class="card-body" style="display: flex; flex-direction: column; gap: 0.5rem; font-size: 0.9rem;">
                  <div><strong>Coach Model:</strong> <span id="stu-bus-model">-</span></div>
                  <div><strong>Registration Plate:</strong> <span id="stu-bus-plate" style="font-family: var(--font-mono);">-</span></div>
                  <div><strong>Assigned Driver:</strong> <span id="stu-driver-name" style="font-weight: 700;">-</span></div>
                  <div><strong>Driver Contact:</strong> <span id="stu-driver-phone">-</span></div>
                </div>
              </div>
            </div>
          </div>

          <!-- Tab: Digital Bus Pass -->
          <div id="stu-tab-bus-pass" style="display: none;">
            <div style="padding: 1rem 0;">
              <div class="bus-pass-card">
                <div class="pass-header">
                  <div>
                    <div style="font-size: 0.75rem; text-transform: uppercase; letter-spacing: 0.12em; color: rgba(255, 255, 255, 0.7);">
                      Institutional Transport Board
                    </div>
                    <div style="font-size: 1.4rem; font-weight: 800; letter-spacing: -0.02em;">Official Student Commuter Pass</div>
                  </div>
                  <span class="badge badge-success" id="pass-card-status">ACTIVE</span>
                </div>

                <div class="pass-body">
                  <div>
                    <div class="pass-label">Student Name</div>
                    <div class="pass-value" id="pass-student-name">Maheswari</div>
                  </div>
                  <div>
                    <div class="pass-label">Roll Number</div>
                    <div class="pass-value" id="pass-student-roll">STU-2026-001</div>
                  </div>
                  <div>
                    <div class="pass-label">Allocated Bus</div>
                    <div class="pass-value" id="pass-bus-num">BUS-101</div>
                  </div>
                  <div>
                    <div class="pass-label">Assigned Seat</div>
                    <div class="pass-value" id="pass-seat-num">Seat-12</div>
                  </div>
                  <div>
                    <div class="pass-label">Designated Stop</div>
                    <div class="pass-value" id="pass-pickup-stop">Trinity Square</div>
                  </div>
                  <div>
                    <div class="pass-label">Pass Identification</div>
                    <div class="pass-value" style="font-family: var(--font-mono); font-size: 0.9rem;" id="pass-code">PASS-2026-STU01</div>
                  </div>
                </div>

                <div class="pass-footer">
                  <div>
                    <div class="pass-label">Valid Until</div>
                    <div style="font-weight: 800;" id="pass-valid-date">2026-12-31</div>
                  </div>
                  <div class="qr-placeholder" id="pass-qr-box">
                    <span style="font-size: 1.1rem;">📲</span>
                    <span>VERIFIED</span>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Tab: Report Absence -->
          <div id="stu-tab-absence" style="display: none;">
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(360px, 1fr)); gap: 1.5rem;">
              <div class="card">
                <div class="card-header">
                  <div class="card-title">📝 Notify Driver of Absence</div>
                </div>
                <div class="card-body">
                  <p style="font-size: 0.85rem; color: var(--text-secondary); margin-bottom: 1.25rem;">
                    Not commuting on the institutional bus today? Submitting this notice flags your driver manifest immediately with <strong>ABSENT</strong> so the bus does not waste time waiting for you.
                  </p>
                  <form onsubmit="student.submitAbsence(event)">
                    <div class="form-group">
                      <label>Date of Absence</label>
                      <input type="date" id="absence-date" class="form-control" required>
                    </div>
                    <div class="form-group">
                      <label>Commute Shift</label>
                      <select id="absence-trip-type" class="form-control">
                        <option value="both">Both Morning & Evening Commute</option>
                        <option value="morning_pickup">Morning Pickup Only</option>
                        <option value="evening_drop">Evening Drop Only</option>
                      </select>
                    </div>
                    <div class="form-group">
                      <label>Reason (Optional)</label>
                      <textarea id="absence-reason" class="form-control" rows="3" placeholder="e.g. Off-campus internship, medical appointment, personal leave..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary" style="width: 100%;">Submit Absence Notice</button>
                  </form>
                </div>
              </div>

              <div class="card">
                <div class="card-header"><div class="card-title">📜 My Submitted Absence Notices</div></div>
                <div class="table-responsive">
                  <table>
                    <thead>
                      <tr>
                        <th>Date</th>
                        <th>Shift</th>
                        <th>Reason</th>
                        <th>Status</th>
                      </tr>
                    </thead>
                    <tbody id="stu-absence-history-body">
                      <tr><td colspan="4" style="text-align: center; padding: 2rem;">No absence records found.</td></tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <!-- Tab: Emergency Safety SOS -->
          <div id="stu-tab-safety" style="display: none;">
            <div class="card" style="border: 2px solid var(--danger);">
              <div class="card-header" style="background: var(--danger-bg);">
                <div class="card-title" style="color: var(--danger);">🚨 Student Safety & Emergency SOS Alert</div>
              </div>
              <div class="card-body">
                <p style="font-size: 0.9rem; color: var(--text-main); margin-bottom: 1.25rem;">
                  If you encounter an emergency on board, feel unsafe, or need immediate assistance, trigger the button below. This sends an instant high-priority distress beacon to the Institutional Transport Control Desk and driver.
                </p>
                <div class="form-group">
                  <label>Emergency Situation Details</label>
                  <textarea id="stu-emergency-desc" class="form-control" rows="3" placeholder="Describe the situation or required emergency medical/security assistance..."></textarea>
                </div>
                <button class="btn btn-danger" style="padding: 0.85rem 1.5rem; font-size: 1rem; width: 100%;" onclick="student.triggerEmergencySos()">
                  🚨 Broadcast High-Priority Emergency SOS
                </button>
              </div>
            </div>
          </div>
        </div>

      </main>
    </div>
  </div>

  <!-- Global Modal Container -->
  <div id="modal-container" style="display: none;"></div>

  <!-- Global Toast Notification Container -->
  <div id="toast-container"></div>

  <!-- Leaflet JS for Map -->
  <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>
  <!-- Application Logic Modules -->
  <script src="/js/api.js"></script>
  <script src="/js/auth.js"></script>
  <script src="/js/admin.js"></script>
  <script src="/js/manager.js"></script>
  <script src="/js/driver.js"></script>
  <script src="/js/student.js"></script>
  <script src="/js/app.js"></script>
</body>
</html>
