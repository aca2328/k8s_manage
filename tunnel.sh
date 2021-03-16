CP=10.206.115.155
scp ubuntu@${CP}:.kube/config kubeconfig
export KUBECONFIG=$(pwd)/kubeconfig
export OCTANT_PLUGIN_PATH=$(pwd)/octant/plugin
kubectl config set clusters.kubernetes.server https://127.0.0.1:6443
kubectl config set clusters.kubernetes.tls-server-name $CP
ssh -N -L 6443:localhost:6443 ubuntu@$CP &
./octant/octant &
