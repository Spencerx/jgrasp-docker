FROM openjdk:8

# Copy jGRASP into the container
WORKDIR /app
COPY ./jgrasp.zip /app
RUN unzip jgrasp.zip

# Add an unprivileged user to run jGRASP
RUN useradd -ms /bin/bash jgrasp
USER jgrasp

# Entrypoint is jGRASP binary
ENTRYPOINT /app/jgrasp/bin/jgrasp
