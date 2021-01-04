FROM node:latest AS compile-image
RUN npm install -g @angular/cli
WORKDIR ui-app
COPY package.json ./
RUN npm install
COPY . ./
RUN ng build --prod

FROM nginx
COPY env-replace.sh ./
#For below line, check https://gist.github.com/cjus/b46a243ba610661a7efb
COPY nginx-custom.conf /etc/nginx/conf.d/default.conf
COPY --from=compile-image /ui-app/dist/* /usr/share/nginx/html
CMD ["/bin/sh",  "-c",  "sh env-replace.sh && exec nginx -g 'daemon off;'"]

