

# clean
kubectl -n longhorn-system delete volumes.longhorn.rancher.io --all

kubectl -n longhorn-system delete engineimages.longhorn.rancher.io --all
kubectl -n longhorn-system delete nodes.longhorn.rancher.io --all

# clean csi
kubectl -n longhorn-system delete  sts --all --grace-period=0 --force
kubectl -n longhorn-system delete  ds --all --grace-period=0 --force


kubectl delete -Rf longhorn/
