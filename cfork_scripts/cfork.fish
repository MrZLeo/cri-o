#! /home/linuxbrew/.linuxbrew/bin/fish
source ./cfork_modules.fish

# build spin0
create_pod_and_container ./spin_sandbox.json ./spin_container.json
set SPIN_POD $POD_ID
set SPIN_CONTAINER $CONTAINER_ID

# build base
create_pod_and_container ./base_sandbox.json ./base_container.json
set BASE_POD $POD_ID
set BASE_CONTAINER $CONTAINER_ID

# try to create an instance of function1,
# but cri-o will actually fork base_container to spin_sanbox
# to achieve the functionality
# create_pod_and_container ./fn1_sandbox.json ./fn1_container.json
#
