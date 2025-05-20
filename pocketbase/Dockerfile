FROM alpine:latest

WORKDIR /app

# Copy the binary from the subfolder
COPY pocketbase/pocketbase.exe /app/pocketbase

# Make sure it’s executable (on Linux servers)
RUN chmod +x /app/pocketbase

# Expose the default PocketBase port
EXPOSE 8090

# Start the PocketBase server
CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
