# Firebase Hello World

Minimal static site meant for Firebase Hosting to satisfy the cloud providers rubric. Includes a Dockerfile to package the app and test it locally before publishing.

## Structure

- `public/index.html`: main page content.
- `firebase.json`: hosting configuration (single-page setup).
- `.firebaserc`: placeholder for the actual Firebase project ID.
- `Dockerfile`: lightweight Nginx image serving the static assets.

## Prerequisites

- Node.js 18+ (optional, if you want to install the CLI).
- Firebase CLI (`npm install -g firebase-tools`).
- Docker CLI.

## Recommended Steps

1. Authenticate with Firebase:
   ```bash
   firebase login
   ```
2. Initialize the project in the current folder (if needed):
   ```bash
   firebase init hosting
   ```
3. Replace `REEMPLAZAR_CON_ID_PROYECTO` in `.firebaserc` with your project ID.
4. Run the local emulator:
   ```bash
   firebase emulators:start --only hosting
   ```
5. Deploy:
   ```bash
   firebase deploy --only hosting
   ```

## Docker Image

Build locally:

```bash
docker build -t youruser/firebase-hello-world:latest .
```

Test:

```bash
docker run --rm -p 8080:80 youruser/firebase-hello-world:latest
```

Publish to Docker Hub:

```bash
docker login
docker push youruser/firebase-hello-world:latest
```

## Next Steps

- Add Cloud Functions integration for dynamic content.
- Configure automated Lighthouse CI checks for the production URL.

## What I've Learned

- How to serve a static site via Firebase Hosting with a minimal configuration.
- How to containerize the project with Docker for local smoke testing.
- How to automate deployment to Firebase Hosting and Docker Hub using GitHub Actions.