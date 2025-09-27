# Use a lightweight web server to serve the built static files
FROM nginx:alpine

# Copy the pre-built React app from the dist/ directory to nginx's web server directory
COPY dist/ /usr/share/nginx/html

# Expose port 80 (Nginx's default port)
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
