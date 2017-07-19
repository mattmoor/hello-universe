apiVersion: apps/v1beta1
kind: Deployment
metadata:
  # Unique key of the Deployment instance
  name: hello-universe-{environment}
spec:
  replicas: 1
  template:
    metadata:
      labels:
        # Apply this label to pods and default
        # the Deployment label selector to this value
        app: hello-universe-{environment}
    spec:
      containers:
      - name: hello-universe
        image: gcr.io/hightowerlabs/hello-universe:{environment}
        args:
        - "-http=0.0.0.0:80"
        ports:
        - containerPort: 80