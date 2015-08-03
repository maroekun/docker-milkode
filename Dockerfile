FROM ubuntu

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install ruby
RUN apt-get -y install ruby-dev
RUN apt-get -y install build-essential

RUN gem install milkode --no-ri --no-rdoc
RUN milk init --default

EXPOSE 9292

ADD run.rb /run.rb
ADD packages /packages
CMD ruby /run.rb
