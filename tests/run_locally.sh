set -e

distribution='ubuntu'
version='18.04'
# init="/bin/systemd"
init="/usr/bin/systemctl"
run_opts="--privileged -v /sys/fs/cgroup:/sys/fs/cgroup:ro --tmpfs /run --tmpfs /run/lock"
site=hrfilter

docker build --rm=true --file=tests/Dockerfile.${distribution}-${version} --tag=${distribution}-${version}:ansible tests
container_id=$(mktemp)

echo "Starting container..."
docker run --detach --ulimit nofile=1024 --volume=${PWD}:/etc/ansible/roles/dresden-weekly.Rails:ro ${run_opts} ${distribution}-${version}:ansible ${init} > ${container_id}

echo "Running tests

you can enter the container like this:

docker exec -it $(cat ${container_id}) bash
"

docker exec -e ANSIBLE_FORCE_COLOR=1 "$(cat ${container_id})" env TERM=xterm ansible-playbook /etc/ansible/roles/dresden-weekly.Rails/tests/${site}/playbook.yml
