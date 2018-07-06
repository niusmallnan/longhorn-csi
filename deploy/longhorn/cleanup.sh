

# clean
kubectl -n longhorn-system delete volumes.longhorn.rancher.io --all

kubectl -n longhorn-system delete engineimages.longhorn.rancher.io --all
kubectl -n longhorn-system delete nodes.longhorn.rancher.io --all

kubectl delete -Rf longhorn.yaml

