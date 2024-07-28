FROM node:17.1-alpine
WORKDIR /app
COPY . ./
RUN npm run setup-production
ENV PORT=3000
EXPOSE 3000
CMD ["npm" , "run" , "server"]