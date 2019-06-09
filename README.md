# Ansible single host - Scaffold

Scaffold to start playing with configuring an single server using ansible without need
write a ansible.cfg and a hostfile.

To start copy .env.example to .env
```
$ cp .env.example to .env
```

Overwrite the values representing a server with SSH connection, for example: 
```
ansible_user=ubuntu 
ansible_ssh_private_key_file=/home/ubuntu/.secrets/my-aws-awesome.pem
ansible_host=12.203.87.144
```

Ping with makefile predefined task:
```
$ make ansible.ping
```

If return is something like means that success in connect with your host:
```
ansible_become=true | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python"
    }, 
    "changed": false, 
    "ping": "pong"
}
```

Now you can execute your playbook like this:
```
$ make ansible.execute FILE=provision.yml
```