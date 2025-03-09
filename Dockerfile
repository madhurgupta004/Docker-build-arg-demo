FROM ubuntu

# Define build arguments for secrets
ARG SECRET_KEY

# Use the secrets in your build (e.g., copy them to a temp location or use in a command)
RUN echo "$SECRET_KEY" > /tmp/secret_key.txt