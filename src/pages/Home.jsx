import { signOut } from 'firebase/auth';
import { auth } from '../firebase';
import './Home.css';

function Home({ user, userData }) {
  const handleLogout = async () => {
    try {
      await signOut(auth);
    } catch (error) {
      console.error('Logout error:', error);
    }
  };

  const getCategoryColor = (category) => {
    switch (category) {
      case 'Oro':
        return '#DAB31E';
      case 'Plata':
        return '#C0C0C0';
      case 'Bronce':
        return '#8E5029';
      default:
        return '#666';
    }
  };

  const getCategoryIcon = (category) => {
    switch (category) {
      case 'Oro':
      case 'Plata':
      case 'Bronce':
        return '🏅';
      default:
        return '';
    }
  };

  const menuItems = {
    NIBSA: [
      { title: 'Panel de Control', description: 'Visión general', icon: '📊' },
      { title: 'Condiciones', description: 'Crea, edita y elimina condiciones', icon: '✅' },
      { title: 'Usuarios', description: 'Gestiona y da de alta a usuarios', icon: '👥' },
      { title: 'Concesionarios', description: 'Listado de concesionarios', icon: '🏪' },
      { title: 'Estatus', description: 'Estado de cada concesionario', icon: '📈' },
      { title: 'Actividad', description: 'Tracking de actividad', icon: '📅' },
      { title: 'Política Comercial', description: 'Accede a la información detallada', icon: '📄' },
      { title: 'Envío de Emails', description: 'Envío masivo a todos los concesionarios', icon: '📧' },
      { title: 'Ajustes', description: '', icon: '⚙️' },
    ],
    Concesionario: [
      { title: 'Condiciones', description: 'Listado de requisitos a cumplir', icon: '✅' },
      { title: 'Estatus', description: 'Resumen de tu estado actual', icon: '📈' },
      { title: 'Actividad', description: 'Tracking de actividad', icon: '📅' },
      { title: 'Política Comercial', description: 'Accede a la información detallada', icon: '📄' },
    ],
    Auditor: [
      { title: 'Tareas', description: 'Estado de las cumplimentaciones', icon: '✅' },
      { title: 'Concesionarios', description: 'Listado de concesionarios', icon: '🏪' },
      { title: 'Estatus', description: 'Estado de tus concesionarios', icon: '📈' },
      { title: 'Actividad', description: 'Tracking de actividad', icon: '📅' },
      { title: 'Política Comercial', description: 'Accede a la información detallada', icon: '📄' },
    ],
    ASPM: [
      { title: 'Concesionarios', description: 'Listado de concesionarios', icon: '🏪' },
      { title: 'Estatus', description: 'Estado de tus concesionarios', icon: '📈' },
      { title: 'Actividad', description: 'Tracking de actividad', icon: '📅' },
      { title: 'Política Comercial', description: 'Accede a la información detallada', icon: '📄' },
    ],
  };

  const userRole = userData?.role || 'Concesionario';
  const items = menuItems[userRole] || menuItems.Concesionario;

  return (
    <div className="home-container">
      <header className="home-header">
        <div className="header-content">
          <button className="menu-button">☰</button>
          <h1 className="header-title">Venta Exterior Nissan</h1>
          <button onClick={handleLogout} className="logout-button">
            Cerrar Sesión
          </button>
        </div>
      </header>

      <main className="home-main">
        <div className="content-wrapper">
          <div className="user-info">
            <div className="user-header">
              <div>
                <h2 className="user-name">{userData?.display_name || user.email}</h2>
                <p className="user-company">{userData?.company || ''}</p>
              </div>
              <button className="profile-button">
                <div className="profile-icon">👤</div>
                <span>Ver perfil</span>
              </button>
            </div>

            {userData?.category && userData?.role === 'Concesionario' && (
              <div className="user-category">
                <span
                  className="category-badge"
                  style={{ backgroundColor: getCategoryColor(userData.category) }}
                >
                  {getCategoryIcon(userData.category)} {userData.category}
                </span>
              </div>
            )}
          </div>

          <div className="divider"></div>

          <div className="menu-grid">
            {items.map((item, index) => (
              <div key={index} className="menu-item">
                <div className="menu-icon">{item.icon}</div>
                <div className="menu-content">
                  <h3 className="menu-title">{item.title}</h3>
                  {item.description && (
                    <p className="menu-description">{item.description}</p>
                  )}
                </div>
              </div>
            ))}
          </div>
        </div>
      </main>
    </div>
  );
}

export default Home;
