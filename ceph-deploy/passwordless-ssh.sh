#!/usr/bin/env bash

SSH_KEY_FILE=~/.ssh/ceph_ssh_key

REMOTE_USER=safiyat
REMOTE_HOST=10.0.0.66

#Generate the public/private rsa key pair.
ssh-keygen -q -t rsa -P "" -f $SSH_KEY_FILE

ssh $REMOTE_USER@$REMOTE_HOST mkdir -p .ssh

cat $SSH_KEY_FILE.pub | ssh  $REMOTE_USER@$REMOTE_HOST 'cat >> .ssh/authorized_keys'
