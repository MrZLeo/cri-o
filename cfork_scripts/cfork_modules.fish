# create a pod and create a container in that pod
function create_pod_and_container -a pod_conf_path container_conf_path
    set POD_ID $(sudo crictl runp $pod_conf_path)
    set CONTAINER_ID $(sudo crictl create $POD_ID $container_conf_path $pod_conf_path)
    sudo crictl start $CONTAINER_ID
end

# remove current pod
function remove_pod -a pod_id
    sudo crictl stopp $pod_id
    sudo crictl rmp $pod_id
end

# remove currrent container
function remove_container -a container_id
    sudo crictl stop $container_id
    sudo crictl rm $container_id
end

# remove current pod and container
function remove_all
    sudo crictl ps | awk '{ print$1 }' | tail -n +2 | xargs sudo crictl stop | xargs sudo crictl rm
    sudo crictl pods | awk '{ print$1 }' | tail -n +2 | xargs sudo crictl stopp | xargs sudo crictl rmp
end

function pull_all_cfork_image
    set -l IMAGES "docker.io/mrzleo/baseline-image" "docker.io/mrzleo/spin-base-image" "docker.io/mrzleo/python-base-image"
    for image in $IMAGES
        sudo crictl pull $image
    end
end
