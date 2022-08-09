echo -e "Display the architecture of target machine wherein we wanted to do ssh\n" 
arch
echo -e "Display the cpu details\n" 
lscpu
echo -e "Display the kernel details\n"
uname -a
git clone -b multi-arch https://github.com/mayurwaghmode/power-runner-ssh.git /root/power-runner-ssh
cd /root/power-runner-ssh
buildah bud -f Dockerfile -t multi-arch:ppc64le .
