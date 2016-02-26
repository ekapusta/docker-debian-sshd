## Build

    docker build --tag=ekapusta/debian-sshd .

### Args

Defaults are at `build.args.sh` to override create `build.args.override.sh` and change their values there.

  * ROOT_PASSWORD=root
  * SSHD_CONFIG_PERMIT_ROOT_LOGIN=yes
  * SSHD_CONFIG_USE_PAM=no
  * SSHD_CONFIG_USE_DNS=no

*PS: This is ugly polyfill until docker hub autobuilds uses ancient 1.8 version*

## Go into

    docker ps --filter=name=sshd && docker stop sshd && docker rm sshd
    docker run --detach --name=sshd ekapusta/debian-sshd
    docker exec --interactive=true --tty=true sshd bash
