Build
=====

    docker build --tag=garex/sshd .

    docker build --build-arg ROOT_PASSWORD=123456 --tag=garex/sshd .

Go into
=======

    docker ps --filter=name=sshd && docker stop sshd && docker rm sshd
    docker run --detach --name=sshd garex/sshd
    docker exec --interactive=true --tty=true sshd bash
