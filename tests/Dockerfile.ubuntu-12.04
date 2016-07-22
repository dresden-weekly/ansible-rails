FROM ubuntu:12.04

# Install Ansible
RUN apt-get update && apt-get install -y \
  software-properties-common \
  python-software-properties \
  git \
  sudo \
  apt-transport-https \
  locales \
&& apt-add-repository -y ppa:ansible/ansible \
&& apt-get update && apt-get install -y ansible

# Install Ansible inventory file
RUN echo "[local]\nlocalhost ansible_connection=local" > /etc/ansible/hosts
