FROM node:12

# Uygualama dizinini oluştur
WORKDIR /usr/src/app

# Uygulama gerekliliklerini kur
# package.json ve package-lock.json'ı kopyalamak için joker karakteri kullanıldı
COPY package*.json ./

RUN npm install

# Uygulamanın kaynak kodu kopyala
COPY . .

# 8080 portunu aç
EXPOSE 8080

# node server.js komutu ile uygulama başlat
CMD [ "node", "server.js" ]