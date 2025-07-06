FROM node:lts
WORKDIR /app
COPY entrypoint.sh ./entrypoint.sh
RUN chmod +x ./entrypoint.sh
COPY dist ./dist
COPY public ./public
EXPOSE 3000
ENTRYPOINT ["sh","/app/entrypoint.sh"]
