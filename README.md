# Firebase Hello World

Sitio estático minimalista destinado a Firebase Hosting para cumplir con la rúbrica de proveedores cloud. Incluye Dockerfile para empaquetar la aplicación y comprobarla localmente antes de publicarla.

## Estructura

- `public/index.html`: contenido principal de la página.
- `firebase.json`: configuración de hosting (single page).
- `.firebaserc`: placeholder para el identificador real del proyecto Firebase.
- `Dockerfile`: imagen Nginx ligera con los assets estáticos.

## Requisitos previos

- Node.js 18+ (para instalar CLI si se desea).
- CLI de Firebase (`npm install -g firebase-tools`).
- CLI de Docker.

## Pasos recomendados

1. Autenticarse en Firebase:
   ```bash
   firebase login
   ```
2. Inicializar proyecto en la carpeta actual (si no existe):
   ```bash
   firebase init hosting
   ```
3. Reemplazar `REEMPLAZAR_CON_ID_PROYECTO` en `.firebaserc` por el ID del proyecto.
4. Ejecutar emulador local:
   ```bash
   firebase emulators:start --only hosting
   ```
5. Desplegar:
   ```bash
   firebase deploy --only hosting
   ```

## Imagen Docker

Construir localmente:

```bash
docker build -t tuusuario/firebase-hello-world:latest .
```

Probar:

```bash
docker run --rm -p 8080:80 tuusuario/firebase-hello-world:latest
```

Publicar en DockerHub:

```bash
docker login
docker push tuusuario/firebase-hello-world:latest
```

## Próximos pasos

- Añadir integración con Cloud Functions para contenido dinámico.
- Configurar pruebas automáticas del enlace de producción usando Lighthouse CI.


