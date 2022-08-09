ARCH=$(uname -m)
rm -rf /root/power-runner-ssh
git clone -b multi-arch https://github.com/mayurwaghmode/power-runner-ssh.git /root/power-runner-ssh
cd /root/power-runner-ssh
buildah bud -f Dockerfile -t quay.io/mayurwaghmode111/gha-multi-arch:$ARCH .
buildah login -u mayurwaghmode111 -p Mpersistentchess@123 quay.io
podman push quay.io/mayurwaghmode111/gha-multi-arch:$ARCH
