# Conversor de Unidades de Longitud 📏

Una aplicación móvil Flutter desarrollada por Edgar Gallegos para convertir centímetros a diferentes unidades de medida de longitud.

## 📝 Descripción del Proyecto

Esta aplicación permite a los usuarios convertir valores en centímetros a las siguientes unidades:
- **Metros** (m)
- **Yardas** (yd)
- **Pies** (ft)
- **Pulgadas** (in)

La aplicación cuenta con una interfaz intuitiva donde el usuario ingresa un valor en centímetros y obtiene instantáneamente la conversión a todas las unidades mencionadas.

## ✨ Características

- ✅ Conversión instantánea de centímetros a múltiples unidades
- ✅ Validación de entrada de datos (solo números positivos)
- ✅ Interfaz de usuario limpia y fácil de usar
- ✅ Mensajes de error informativos
- ✅ Resultados con precisión de 2 decimales
- ✅ Diseño responsivo compatible con diferentes tamaños de pantalla

## 🏗️ Arquitectura del Proyecto

El proyecto sigue una arquitectura limpia separando la lógica de negocio de la interfaz de usuario:

```
lib/
├── main.dart              # Punto de entrada de la aplicación
├── logica/
│   └── conversion.dart    # Lógica de conversión de unidades
└── ui/
    └── interface.dart     # Interfaz de usuario
```

### Componentes Principales

- **ConversionController**: Clase que contiene la lógica de conversión entre unidades
- **ConversionUI**: Widget que maneja la interfaz de usuario y la interacción
- **MyApp**: Widget raíz de la aplicación

## 🔧 Fórmulas de Conversión

- **Centímetros a Metros**: cm ÷ 100
- **Centímetros a Yardas**: cm ÷ 91.44
- **Centímetros a Pies**: cm ÷ 30.48
- **Centímetros a Pulgadas**: cm ÷ 2.54

## 🚀 Instalación y Ejecución

### Prerrequisitos

- Flutter SDK (versión ^3.5.4)
- Dart SDK
- Android Studio / VS Code
- Dispositivo Android/iOS o emulador

### Pasos para ejecutar

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/EdJGM/leccion_gallegos_edgar_conversion.git
   cd leccion_gallegos_edgar_conversion
   ```

2. **Instalar dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**
   ```bash
   flutter run
   ```

## 📱 Cómo usar la aplicación

1. Abre la aplicación en tu dispositivo
2. En el campo de texto, ingresa un valor en centímetros
3. Presiona el botón "Convertir"
4. Verás los resultados de conversión para todas las unidades
5. Si ingresas un valor inválido, aparecerá un mensaje de error

## 🛠️ Tecnologías Utilizadas

- **Flutter**: Framework de desarrollo móvil multiplataforma
- **Dart**: Lenguaje de programación
- **Material Design**: Sistema de diseño para la interfaz de usuario

## 📚 Recursos de Flutter

Si eres nuevo en Flutter, estos recursos te ayudarán:

- [Lab: Escribe tu primera aplicación Flutter](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Ejemplos útiles de Flutter](https://docs.flutter.dev/cookbook)
- [Documentación oficial de Flutter](https://docs.flutter.dev/)

## 👨‍💻 Autor

**Edgar Gallegos**  
Desarrollo de Aplicaciones Móviles  
