# Use official Nginx image
FROM nginx:alpine

# Remove default content
RUN rm -rf /usr/share/nginx/html/*

# Copy portfolio files to the Nginx public folder
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
