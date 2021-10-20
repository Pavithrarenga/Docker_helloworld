############################################################
# Dockerfile to build Nginx Installed Containers
############################################################


FROM nginx:latest

COPY ./index.html /Users/pavithra/Desktop/LinkedIn_certifications/docker-helloworld-master/index.html


# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# Create a runner script for the entrypoint
COPY runner.sh /runner.sh
RUN chmod +x /runner.sh

# Expose ports
EXPOSE 80

ENTRYPOINT ["/runner.sh"]

# Set the default command to execute
# when creating a new container
CMD ["nginx"] 