FROM ubuntu:noble-20240423

ENV LC_ALL="C.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"

# https://github.com/moby/buildkit/blob/master/frontend/dockerfile/docs/reference.md#run---mounttypecache
RUN rm -f /etc/apt/apt.conf.d/docker-clean; echo 'Binary::apt::APT::Keep-Downloaded-Packages "true";' > /etc/apt/apt.conf.d/keep-cache
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt update && \
    apt install -y --no-install-recommends nano ruby-full build-essential zlib1g-dev libcurl4 aspell && \
    apt upgrade -y && \
    apt autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN gem install jekyll bundler

RUN mkdir -p /jekyll
WORKDIR /jekyll

COPY . /jekyll

RUN bundle install

EXPOSE 4000

CMD ["/bin/bash", "-c", "bundle update --all && bundle install && bundle exec jekyll serve --host=0.0.0.0 --watch"]