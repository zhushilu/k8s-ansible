# 原作者地址：[https://github.com/gjmzj/kubeasz](https://github.com/gjmzj/kubeasz)


# 利用Ansible部署kubernetes集群

## 组件版本

1. kubernetes	v1.10.1
1. etcd		v3.x.xx
1. docker	18.xx.0-ce
1. flannel	>v0.9.1


## 快速指南

单机快速体验k8s集群的测试、开发环境--[AllinOne部署](docs/quickStart.md)；在国内的网络环境下要比官方的minikube方便、简单很多。

## 使用指南

在原基础上修改了部分参数，修改了针对1.10版本一些启动参数的变化，增加了kubelet证书的自动签发和续签功能。
增加了docker的参数优化。




