FROM postgres:10.5

# Copy the custom initialization script to the bin directory
COPY custom_init_script.sh /usr/local/bin/

# Set execute permissions for the script
RUN chmod +x /usr/local/bin/custom_init_script.sh
