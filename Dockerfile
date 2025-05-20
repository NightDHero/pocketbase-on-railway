FROM alpine:latest

WORKDIR /app

# ✅ Correct binary for Linux (no .exe)
COPY pocketbase/pocketbase /app/pocketbase

# Make executable
RUN chmod +x /app/pocketbase

EXPOSE 8090

CMD ["./pocketbase", "serve", "--http=0.0.0.0:8090"]
