pm_host = "192.168.1.251"
pm_user = "root@pam!terraform"
pm_password = "d3c1654a-da01-476c-8412-98052cb7f9a2"
pm_node_name = "prx"
pm_tls_insecure = true
pvt_key = "/root/.ssh/id_rsa"
pub_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDAVBIAivf3wL+hLTt9++Xib4j6pnydaKGTZFSea4vThOPFDB4ZhmBnwnFM6YfW0NAg9wJNEAtEsloovrqIaKd/gXS+kyU8qHGEszd2kPA2kZdQcyeSGfwcoliJ9Oyn4Diy3HBkTzOYlSljzxsPxrLTt1c2vf1y4RtcM5xetNyIKBpHztvQae6qPo9LwFDs4dUE0UkSq2set3KOs+JAE+Ke07RV13W9ay7VEDwP6mKduRoLXpCPjT+8m3aRsyYqMgtSRLubqKVmm+kPviL0ZV98o6+N1C1a7VnK+f/2GnL4Ck+lCRgcxe5PDc06rMJ7Sg2VV+9mi3uVh6imZxI92Plz7ktkevZtivFtathQPOQpROB21X7u9jOYafS2y5Ky1AfLV3NcMTSUA+YV+FHdN1Q2SoRDgLQHaKk18rMDzi4bFFCT1cfzGYB0Ccq+HFRwOSLN3QFGEbF3kGctxHlS8JdZZ5tNcLbgykWKcCoh+RHOVxBQwNHp55xSyjb/0ULdm2s= root@proxy"

server1_name  = "docker-nodejs"
server1_cpu   = 4
server1_mem   = 2048
server1_disk  = 32
server1_ip    = "192.168.1.200"

server2_name  = "docker-mysql"
server2_cpu   = 4
server2_mem   = 2048
server2_disk  = 32
server2_ip    = "192.168.1.202"

server3_name  = "docker-mariadb"
server3_cpu   = 4
server3_mem   = 2048
server3_disk  = 32
server3_ip    = "192.168.1.203"

tamplate_vm_name = "ubuntucloud22"
networkrange = 24
gateway = "192.168.1.1"