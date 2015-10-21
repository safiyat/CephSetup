#if [ `lsb_release -is | grep -i 'ubuntu\|debian'` ]
CEPH_RELEASE="hammer"

if [ -f "/etc/debian_version" ]
then
    wget -v -O- 'https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc' | sudo apt-key add -

    echo deb http://ceph.com/debian-$CEPH_RELEASE/ $(lsb_release -sc) main | sudo tee /etc/apt/sources.list.d/ceph.list

    sudo apt-get update
    sudo apt-get install ceph-deploy

elif [ -f "/etc/redhat-release" ]
then
    DISTRO=``
    sudo echo -e "[ceph-noarch]\nname=Ceph noarch packages\nbaseurl=http://ceph.com/rpm-$CEPH_RELEASE/$DISTRO/noarch\nenabled=1\ngpgcheck=1\ntype=rpm-md\ngpgkey=https://ceph.com/git/?p=ceph.git;a=blob_plain;f=keys/release.asc"
fi
