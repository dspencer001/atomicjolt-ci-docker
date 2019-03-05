# Atomic Jolt CI Docker Image
## Updating
-----------
1. Login:
```
docker login
```
2. Build the new image:
```
docker build .
```
3. Get the new image ID: 
```
docker image ls
```
4. Make a new tag, updating versions where necessary:
```
docker tag <image id> dspencer01/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
5. Push the new tag to dockerhub:
```
docker push dspencer01/atomicjolt-ci:ruby-2.4.1--node-8.15.1--yarn-1.10.1
```
