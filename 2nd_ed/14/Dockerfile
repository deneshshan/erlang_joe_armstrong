FROM trenpixster/elixir
MAINTAINER Denesh Shan

# Important!  Update this no-op ENV variable when this Dockerfile
# is updated with the current date. It will force refresh of all
# of the base images and things like `apt-get update` won't be using
# old cached versions when the Dockerfile is built.
ENV REFRESHED_AT 2015-02-12

ADD . /home/app

WORKDIR /home/app
COPY .erlang.cookie /
RUN cp -r  .erlang_config /

EXPOSE 22
EXPOSE 1234
