FROM ubuntu

# Define build arguments for secrets
ARG SECRET_KEY

# Use the secrets in your build (e.g., copy them to a temp location or use in a command)
RUN echo "$SECRET_KEY" > /tmp/secret_key.txt && \
    # Your build commands here, e.g., some-script.sh
    rm -f /tmp/secret_key.txt /tmp/api_token.txt