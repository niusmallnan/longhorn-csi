
# clean csi
kubectl -n longhorn-system delete pods -l app=csi-attacher --grace-period=0 --force
kubectl -n longhorn-system delete pods -l app=csi-provisioner --grace-period=0 --force
kubectl -n longhorn-system delete sts --all --grace-period=0 --force
kubectl -n longhorn-system delete pods -l app=longhorn-csi-plugin --grace-period=0 --force
kubectl -n longhorn-system delete ds longhorn-csi-plugin --grace-period=0 --force

# clean flexvolume
kubectl -n longhorn-system delete pods -l app=longhorn-flexvolume-driver --grace-period=0 --force

# clean longhorn
kubectl -n longhorn-system delete volumes.longhorn.rancher.io --all
kubectl -n longhorn-system delete engineimages.longhorn.rancher.io --all
kubectl -n longhorn-system delete nodes.longhorn.rancher.io --all
kubectl -n longhorn-system delete pods -l longhorn=engine-image --grace-period=0 --force
kubectl -n longhorn-system delete pods -l app=longhorn-manager --grace-period=0 --force
kubectl delete -Rf longhorn/ --grace-period=0 --force
