# product-catalog/Dockerfile

# Hafif bir nginx imajı
FROM nginx:alpine

# Varsayılan nginx html dizinine statik dosyalarınızı kopyalayın
COPY . /usr/share/nginx/html

# Container 80 portunu expose edin
EXPOSE 80

# nginx daemon modda çalışsın
CMD ["nginx", "-g", "daemon off;"]
