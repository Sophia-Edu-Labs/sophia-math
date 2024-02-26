########################
# setup base image
FROM manimcommunity/manim:v0.17.3 as base

USER root

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
    xdg-utils \
    vlc \
    curl \
    rubberband-cli \
    libssl-dev

# Copy requirements.txt
COPY ./docker/requirements.txt /tmp/requirements.txt

# install requirements
RUN pip install -r /tmp/requirements.txt

# install rust (as user)
USER manimuser
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
RUN echo 'source $HOME/.cargo/env' >> $HOME/.zshrc
# add cargo to path
ENV PATH="$HOME/.cargo/bin:${PATH}"

# install typst as user
RUN cargo install --git https://github.com/geroembser/typst --locked --branch linktags typst-cli

# back to root afterwards, to be "clean"
USER root

########################
# simple devcontainer (without extended docker stuff)
FROM base as devcontainerbase

# download custom version of manim sideview extension
COPY ./docker/download_manimsideview.sh /tmp/download_manimsideview.sh
RUN chmod +x /tmp/download_manimsideview.sh
RUN /tmp/download_manimsideview.sh

USER manimuser

CMD [ "sleep", "infinity" ]