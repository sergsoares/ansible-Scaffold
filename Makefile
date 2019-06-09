include .env

ansible.execute:
	ansible-playbook $(FILE) --extra-vars "ansible_host=$(ansible_host) ansible_user=$(ansible_user) ansible_ssh_private_key_file=$(ansible_ssh_private_key_file)" 
	
ansible.ping:
	ansible all -m ping --extra-vars "ansible_host=$(ansible_host) ansible_user=$(ansible_user) ansible_ssh_private_key_file=$(ansible_ssh_private_key_file)"