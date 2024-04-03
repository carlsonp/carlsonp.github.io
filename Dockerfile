FROM ubuntu:mantic-20240216

ENV LC_ALL="C.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"

# for the local apt-cacher-ng proxy
RUN echo 'Acquire::HTTP::Proxy "http://192.168.1.226:3142";' >> /etc/apt/apt.conf.d/01proxy && \
    echo 'Acquire::HTTPS::Proxy "false";' >> /etc/apt/apt.conf.d/01proxy

RUN apt update && \
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