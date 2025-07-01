rm -rf drawio_desktop/dist drawio_desktop/node_modules vscode/node_modules vscode/out

cd drawio_desktop
npm ci
npm run build
cd ..

cd vscode
npm ci

npm run dependencies
npm run vscode:package
