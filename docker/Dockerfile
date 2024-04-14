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
    libssl-dev \
    pdf2svg \
    git

# Copy requirements.txt
COPY ./docker/requirements.txt /tmp/requirements.txt

# install requirements
RUN pip install --default-timeout=1000 -r /tmp/requirements.txt

# install rust (as user)
USER manimuser
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
RUN echo 'source $HOME/.cargo/env' >> $HOME/.bashrc
RUN echo 'source $HOME/.cargo/env' >> $HOME/.zshrc
# add cargo to path
ENV PATH="$HOME/.cargo/bin:${PATH}"

# install typst as user
RUN cargo install --git https://github.com/geroembser/typst --locked --branch linktags typst-cli

# install svg2pdf
RUN cargo install svg2pdf-cli

# install typst-svg-emoji workaround
RUN TYPST_SVG_EMOJI_PKG=$HOME/.local/share/typst/packages/local/svg-emoji/0.1.0 && mkdir -p $TYPST_SVG_EMOJI_PKG && git clone --recurse-submodules https://github.com/polazarus/typst-svg-emoji $TYPST_SVG_EMOJI_PKG

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