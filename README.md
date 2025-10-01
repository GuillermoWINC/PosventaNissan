# Venta Exterior Nissan - Web App

Aplicación web de gestión de posventa para Nissan Venta Exterior.

## Descripción

Esta es una aplicación React independiente que se conecta al mismo proyecto de Firebase que la aplicación Flutter original. Está diseñada para funcionar en Bolt.new y proporciona las mismas funcionalidades principales.

## Tecnologías

- React 19
- Vite 7
- Firebase (Authentication & Firestore)
- React Router DOM

## Características Actuales

- Autenticación con email y contraseña
- Dashboard personalizado según rol de usuario (NIBSA, Concesionario, Auditor, ASPM)
- Gestión de sesión en tiempo real
- Integración completa con Firebase
- Diseño responsive con tema Nissan

## Roles de Usuario

### NIBSA
- Panel de Control
- Gestión de Condiciones
- Gestión de Usuarios
- Listado de Concesionarios
- Visualización de Estatus
- Tracking de Actividad
- Política Comercial
- Envío de Emails
- Ajustes

### Concesionario
- Listado de Condiciones
- Resumen de Estatus
- Tracking de Actividad
- Política Comercial

### Auditor
- Gestión de Tareas
- Listado de Concesionarios
- Visualización de Estatus
- Tracking de Actividad
- Política Comercial

### ASPM
- Listado de Concesionarios
- Visualización de Estatus
- Tracking de Actividad
- Política Comercial

## Variables de Entorno

Las credenciales de Firebase están configuradas en el archivo `.env`:

```
VITE_FIREBASE_API_KEY
VITE_FIREBASE_AUTH_DOMAIN
VITE_FIREBASE_PROJECT_ID
VITE_FIREBASE_STORAGE_BUCKET
VITE_FIREBASE_MESSAGING_SENDER_ID
VITE_FIREBASE_APP_ID
```

## Desarrollo Local

```bash
npm install
npm run dev
```

## Build

```bash
npm run build
```

## Notas

- Esta aplicación es completamente independiente del repositorio de GitHub
- Se conecta al mismo proyecto de Firebase que la app Flutter
- Optimizada para funcionar en Bolt.new
- El servidor de desarrollo se inicia automáticamente en Bolt
