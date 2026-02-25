# Docker tutorial sample app

Simple Express app that responds on `/` with "Welcome to my awesome app!".

Prerequisites
- Node.js (to run locally)
- Docker (to build the image)

Run locally

```bash
npm install
node src/server.js
```

Docker

Build the image:

```bash
docker build -t my-app .
```

Run the container (maps port 3000):

```bash
docker run -p 3000:3000 my-app
```

Notes
- The app listens on port 3000.
- Consider adding a `.gitignore` to exclude `node_modules` and `package-lock.json`.
