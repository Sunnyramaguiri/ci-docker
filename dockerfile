FROM nginx

# Set working directory
WORKDIR /app

# Install npm and clean up
RUN apt update && \
    apt install -y npm && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*

# Create a new user and give necessary permissions
RUN useradd -ms /bin/bash appsun && \
    chown -R appsun:appsun /app

# Switch to new user
USER appsun

# Expose port
EXPOSE 80

