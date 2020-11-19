# k8s_manage
 
 clone this to you mac to manage distantly a k8s cluster using Octant running locally
 
 ## prerequises
* installed k8s cluster with ssh key configured for ssh remote access to master/control-plane
* kubectl installed locally 
 
 **tested on osx 10.15.7, k8s v1.16.15 **
 
 # usage
 
 clone to local directory, edit tunnel.sh to change the first line `CP=master_ip`

then to run, just `source tunnel.sh`
it should create the ssh tunnel and run Octant in the default browser
