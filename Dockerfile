
FROM ubuntu 

# Securely access the secret file using BuildKit
RUN --mount=type=secret,id=my_secret cat /run/secrets/my_secret > /tmp/secret_file.txt

# Optional: Use the secret file in commands
RUN echo "Using secret file: $(cat /tmp/secret_file.txt)"