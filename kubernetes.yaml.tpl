apiVersion: apps/v1
kind: Deployment
metadata:
  name: myapp
spec:
  selector:
    matchLabels:
      app: myapp
  replicas: 1
  template:
    metadata:
      labels:
        app: myapp
    spec:
      containers:
        - name: myapp
          image: sta:latest
          imagePullPolicy: IfNotPresent
          ports:
            - containerPort: 5000 #<<<PORT FIXED

---
apiVersion: v1
kind: Service
metadata:
  name: myapp
spec:
  type: NodePort
  selector:
    app: myapp
  ports:
    - protocol: TCP
      port: 5000 #<<<PORT FIXED
      targetPort: 5000
      nodePort: 30000
