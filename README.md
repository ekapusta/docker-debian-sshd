*Compatible with docker >= 1.9.0*

## Build

    docker build --tag=garex/sshd .

    docker build --build-arg ROOT_PASSWORD=123456 --tag=garex/sshd .


### Build args

    * ROOT_PASSWORD=root
    * SSHD_CONFIG_PERMIT_ROOT_LOGIN=yes
    * SSHD_CONFIG_USE_PAM=no
    * SSHD_CONFIG_USE_DNS=no

## Go into

    docker ps --filter=name=sshd && docker stop sshd && docker rm sshd
    docker run --detach --name=sshd garex/sshd
    docker exec --interactive=true --tty=true sshd bash
