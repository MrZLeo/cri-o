#! /bin/bash

/usr/local/bin/conmon \
    -b /run/containers/storage/overlay-containers/926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d/userdata \
    -c 926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d \
    --exit-dir /var/run/crio/exits \
    -l /var/log/crio/pods/a355b5247ba0ab74beec43102ce43be29fef76b94919345c0dac142e196ae25e/926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d.log \
    --log-level info \
    -n k8s_podsandbox1-redis_podsandbox1_redhat.test.crio_redhat-test-crio_0 \
    -P /run/containers/storage/overlay-containers/926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d/userdata/conmon-pidfile \
    -p /run/containers/storage/overlay-containers/926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d/userdata/pidfile \
    --persist-dir /var/lib/containers/storage/overlay-containers/926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d/userdata \
    -r /home/fedora/runc/runc \
    --runtime-arg --root=/run/runc \
    --socket-dir-path /var/run/crio \
    --syslog -u 926f8dddb4f08a2617566067d9c8ebbe306afa41629ac567eb02ce3b4090561d \
    -s

