<p align="center">
  <a href="https://flutter.dev/" target="blank">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Google-flutter-logo.png/800px-Google-flutter-logo.png" width="200" alt="App Logo" /></a>
</p>

# Proyecto Basico Flutter

Prueba de cosas básicas en flutter

> Creado en Flutter

## DEV

1. Clonar repositorio con `git clone`
2. Instalar los paquetes de Flutter con `flutter pub get`
3. Ejecutar el proyecto con `flutter run` o con `F5`

## Requisitos

1. Tener instalado Flutter
2. Tener instalado Android Studio

## Scripts

Algunos scripts que pueden ser utilizados

| Comando                                        | Descripcion                                             |
| ---------------------------------------------- | ------------------------------------------------------- |
| `flutter pub get`                              | Instala las dependencias                                |
| `flutter  build apk --release`                 | Crea un apk de produccion                               |
| `flutter  build apk --release --split-per-abi` | Crea un apk, dividido por arquitectura de sistema       |
| `flutter  build appbundle`                     | Crea el bundle de tienda para Android                   |
| `flutter  build ipa`                           | Crea el bundle de tienda para IOS                       |
| `flutter  build web`                           | Crea los assets estaticos de Web                        |
| `dart fix --apply && dart format .`            | Formatea el codigo                                      |
| `flutter clean`                                | Limpia las dependencias                                 |
| `adb devices`                                  | ANDROID - Listado de dispositivos                       |
| `adb tcpip 5555`                               | ANDROID - Exponer Daemon de debug en port `5555`        |
| `adb connect <ip_android>:5555`                | ANDROID - Conectar el `ip_android` al puerto del Daemon |
| `adb kill-server`                              | ANDROID - Matar el demonio en caso de error de conexion |

#### Otros Scripts

Otros scripts que pueden usar para fines de desarrollo, (acciones de paquetes)

| Comando | Descripcion                                                                |
| ------- | -------------------------------------------------------------------------- |
| `....`  | Insertar scripts que usen los paquetes de terceros si es necesario hacerlo |

## Documentacion

Links de librerias utilizadas

- [Flutter]("https://flutter.dev/")
- [Instalaciones Recomendadas](https://gist.github.com/Klerith/2917b2a21ea9c4bfa5d1070c89a89ec7)
- [Emulador en Línea](https://zapp.run/new)
