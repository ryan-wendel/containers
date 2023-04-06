#!/bin/sh

adduser -h /home/${SSH_USER} -s /bin/sh -D ${SSH_USER}
echo -n "${SSH_USER}:${PASSWORD}" | chpasswd
mkdir -p /home/${SSH_USER}/.ssh 
chmod 0700 /home/${SSH_USER}/.ssh
echo "${SSH_PUB_KEY}" > /home/${SSH_USER}/.ssh/authorized_keys 
chmod 0600 /home/${SSH_USER}/.ssh/authorized_keys && \
chown -R ${SSH_USER}:${SSH_USER} /home/${SSH_USER}/.ssh 

sed -i 's/^AllowTcpForwarding .*/AllowTcpForwarding yes/' /etc/ssh/sshd_config
echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
echo "AllowUsers ${SSH_USER}" >> /etc/ssh/sshd_config

chmod 0755 entrypoint.sh

ssh-keygen -A
exec /usr/sbin/sshd -D -e "$@"
