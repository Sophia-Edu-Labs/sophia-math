########################
# setup base image
FROM manimcommunity/manim:v0.17.3 as base

USER root

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    xdg-utils \
    vlc \
    curl \
    rubberband-cli

# Copy requirements.txt
COPY ./docker/requirements.txt /tmp/requirements.txt

# Copy requirements install script
COPY ./docker/install_requirements.sh /tmp/install_requirements.sh

# Install dependencies by running the install script
RUN chmod +x /tmp/install_requirements.sh
RUN /tmp/install_requirements.sh /tmp/requirements.txt


########################
# simple devcontainer (without extended docker stuff)
FROM base as devcontainerbase

# download custom version of manim sideview extension
RUN mkdir /downloads
RUN curl -L -o /downloads/manim-sideview-extension.vsix https://github.com/geroembser/manim-sideview/releases/download/v0.2.4-alpha/manim-sideview-0.2.4.vsix

USER manimuser

CMD [ "sleep", "infinity" ]