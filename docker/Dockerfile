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

# install requirements
RUN pip install -r /tmp/requirements.txt

########################
# simple devcontainer (without extended docker stuff)
FROM base as devcontainerbase

# download custom version of manim sideview extension
COPY ./docker/download_manimsideview.sh /tmp/download_manimsideview.sh
RUN chmod +x /tmp/download_manimsideview.sh
RUN /tmp/download_manimsideview.sh

USER manimuser

CMD [ "sleep", "infinity" ]