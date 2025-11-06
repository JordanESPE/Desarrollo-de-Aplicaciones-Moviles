# Sistema de Login y Perfil - Jordan Guaman

Aplicación Flutter desarrollada para el Laboratorio 2 de Desarrollo Móvil.

## 📱 Descripción

Esta aplicación implementa un sistema de login con credenciales quemadas y una página de perfil profesional con información del estudiante Jordan Guaman.

## 🎨 Características de Diseño

### Página de Login
- **Colores**: Verde y Rojo (Colores oficiales de la ESPE)
  - Verde ESPE: `#006838`
  - Rojo ESPE: `#DC143C`
- Gradiente de fondo con los colores institucionales
- Validación de credenciales hardcoded
- Diseño moderno con Material Design 3

### Página de Perfil
- **Colores**: Azul y Celeste (Colores del Departamento)
  - Azul Departamento: `#0066CC`
  - Celeste: `#87CEEB`
- Landing page profesional con información del estudiante
- Secciones de habilidades Frontend y Backend
- Diseño responsive y elegante

## 🔐 Credenciales de Acceso

- **Usuario (Cédula)**: `2300292980`
- **Contraseña**: `2300292980`

> **Nota**: Tanto el usuario como la contraseña deben ser idénticos para acceder.

## 👨‍💻 Información del Perfil

**Nombre**: Jordan Guaman  
**Carrera**: Ingeniería de Software  
**Universidad**: Universidad de las Fuerzas Armadas - ESPE

### Habilidades Técnicas

**Frontend Development:**
- HTML5 & CSS3
- JavaScript/TypeScript
- React.js
- Flutter
- Angular
- Vue.js

**Backend Development:**
- Node.js
- Python/Django
- Java/Spring Boot
- PostgreSQL/MySQL
- MongoDB
- REST APIs

## 📁 Estructura del Proyecto

```
lib/
├── main.dart                          # Punto de entrada de la aplicación
├── temas/                             # Temas y estilos
│   ├── color_scheme_login.dart       # Colores ESPE (Verde/Rojo)
│   ├── color_scheme_profile.dart     # Colores Departamento (Azul/Celeste)
│   └── index.dart                    # Exportación de temas
└── vistas/
    └── paginas/
        ├── login_page.dart           # Página de login
        └── profile_page.dart         # Página de perfil

imagenes/                              # Assets de imágenes
├── dcco_imagen.jpeg
├── logo universidad.png
└── perfil.jpeg
```

## 🚀 Instalación y Ejecución

### Prerrequisitos
- Flutter SDK (versión 3.9.2 o superior)
- Dart SDK
- Android Studio / VS Code con extensiones de Flutter
- Dispositivo físico o emulador configurado

### Pasos de Instalación

1. **Clonar o descargar el proyecto**

2. **Navegar al directorio del proyecto**
```bash
cd Tema/Tema
```

3. **Instalar dependencias**
```bash
flutter pub get
```

4. **Verificar dispositivos disponibles**
```bash
flutter devices
```

5. **Ejecutar la aplicación**
```bash
flutter run
```

### Plataformas Soportadas
- ✅ Android
- ✅ iOS
- ✅ Windows
- ✅ Web (Chrome/Edge)
- ✅ Linux
- ✅ macOS

## 🎯 Flujo de Navegación

1. **Inicio**: La aplicación abre en la página de Login
2. **Login**: Ingrese las credenciales (2300292980 / 2300292980)
3. **Validación**: Si las credenciales son correctas, navega al perfil
4. **Perfil**: Muestra la información profesional de Jordan Guaman
5. **Cerrar Sesión**: Botón para regresar al login

## 🎨 Paleta de Colores

### Login (ESPE)
```dart
Verde Principal: #006838
Verde Claro:     #2E8B57
Verde Oscuro:    #004225
Rojo Principal:  #DC143C
Rojo Claro:      #FF6B6B
Rojo Oscuro:     #8B0000
```

### Perfil (Departamento)
```dart
Azul Principal:  #0066CC
Azul Oscuro:     #003D7A
Azul Navy:       #001F3F
Celeste:         #87CEEB
Celeste Cielo:   #5DADE2
Celeste Pálido:  #ADD8E6
```

## 📝 Características Técnicas

- **Framework**: Flutter 3.9.2
- **Lenguaje**: Dart
- **Arquitectura**: Widget-based
- **Estado**: StatefulWidget y StatelessWidget
- **Navegación**: Named Routes
- **UI/UX**: Material Design 3
- **Validación**: Hardcoded credentials
- **Assets**: Configurados en pubspec.yaml

## 🔧 Configuración de Assets

Los assets están configurados en `pubspec.yaml`:

```yaml
flutter:
  uses-material-design: true
  assets:
    - ../../imagenes/dcco_imagen.jpeg
    - ../../imagenes/logo universidad.png
    - ../../imagenes/perfil.jpeg
```

## 📱 Capturas de Pantalla

*(La aplicación debe ejecutarse para ver la interfaz)*

### Pantalla de Login
- Formulario con campos de Cédula y Contraseña
- Gradiente verde-rojo ESPE
- Validación en tiempo real
- Mensajes de error personalizados

### Pantalla de Perfil
- Header con foto de perfil
- Información del estudiante
- Tarjetas de habilidades Frontend/Backend
- Gradiente azul-celeste
- Botón de cerrar sesión

## 👨‍🎓 Autor

**Jordan Guaman**  
Estudiante de Ingeniería de Software  
Universidad de las Fuerzas Armadas - ESPE  
Departamento de Ciencias de la Computación

## 📄 Licencia

Este proyecto es parte de un laboratorio académico para la materia de Desarrollo Móvil.

---

**Nota**: Esta aplicación fue desarrollada con fines educativos como parte del Laboratorio 2 de Desarrollo Móvil.
