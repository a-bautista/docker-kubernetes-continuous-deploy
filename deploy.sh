docker build -t alexbr9007/multi-images-client:latest -t alexbr9007/multi-images-client:$SHA -f ./client/Dockerfile ./client
docker build -t alexbr9007/multi-images-server:latest -t alexbr9007/multi-images-server:$SHA -f ./server/Dockerfile ./server
docker build -t alexbr9007/multi-images-worker:latest -t alexbr9007/multi-images-worker:$SHA -f ./worker/Dockerfile ./worker

docker push alexbr9007/multi-images-client:latest
docker push alexbr9007/multi-images-server:latest
docker push alexbr9007/multi-images-worker:latest

docker push alexbr9007/multi-images-client:$SHA
docker push alexbr9007/multi-images-server:$SHA
docker push alexbr9007/multi-images-worker:$SHA

kubectl apply -f simplek8s
#update the image of Kubernetes with the latest
kubectl set image deployments/server-deployment server=alexbr9007/multi-images-server:$SHA
kubectl set image deployments/client-deployment client=alexbr9007/multi-images-client:$SHA
kubectl set image deployments/worker-deployment worker=alexbr9007/multi-images-worker:$SHA