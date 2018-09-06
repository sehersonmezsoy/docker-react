#build oluþturuyor tüm build folderi kuruyor

FROM node:alpine as builder
Workdir '/app'
Copy package.json .
Run npm install
Copy . . 
RUN npm run build

#run süreci nginx

From nginx
#builderden /app/build e kopyala
copy --from=builder /app/build /usr/share/nginx/html