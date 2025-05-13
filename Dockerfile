# Utilise une image Node officielle
FROM node:18

# Crée un dossier pour l'app
WORKDIR /app

# Copie les fichiers de package
COPY package*.json ./

# Installe les dépendances
RUN npm install

# Copie le reste des fichiers
COPY . .

# Expose le port de l'application
EXPOSE $API_PORT

# Commande de démarrage
CMD ["npm", "start"]
