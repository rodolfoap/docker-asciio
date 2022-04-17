FROM debian:buster-slim
ARG USERNAME
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt -y install asciio
WORKDIR /app
RUN groupadd -g 1000 ${USERNAME}
RUN useradd -d /home/${USERNAME} -s /bin/bash -m ${USERNAME} -u 1000 -g 1000
RUN mkdir -p /home/${USERNAME}/.local/share
ENV HOME /home/${USERNAME}
CMD asciio
USER ${USERNAME}
