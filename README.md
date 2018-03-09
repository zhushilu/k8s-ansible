# 利用Ansible部署kubernetes集群

本系列文档致力于提供快速部署高可用`k8s`集群的工具，并且也努力成为`k8s`实践、使用的参考书；基于二进制方式部署和利用`ansible-playbook`实现自动化：既提供一键安装脚本，也可以分步执行安装各个组件，同时讲解每一步主要参数配置和注意事项；二进制方式部署有助于理解系统各组件的交互原理和熟悉组件启动参数，有助于快速排查解决实际问题。

**集群特性：`TLS` 双向认证、`RBAC` 授权、多`Master`高可用、支持`Network Policy`**

**注意：** 为提高集群网络插件安装的灵活性，使用`DaemonSet Pod`方式运行网络插件，目前支持`Calico` `flannel`可选

文档基于`Ubuntu 16.04/CentOS 7`，其他系统需要读者自行替换部分命令；由于使用经验有限和简化脚本考虑，已经尽量避免`ansible-playbook`的高级特性和复杂逻辑。

你可能需要掌握基本`kubernetes` `docker` `linux shell` 知识，关于`ansible`建议阅读 [ansible超快入门](http://weiweidefeng.blog.51cto.com/1957995/1895261) 基本够用。



## 组件版本

1. kubernetes	v1.9.1
1. etcd		v3.2.13
1. docker	17.12.0-ce
1. calico/node	v2.6.5
1. flannel	v0.9.1

+ 附：集群用到的所有二进制文件已打包好供下载 [https://s.zhusl.com/k8s/k8s.191.tar.gz](https://s.zhusl.com/k8s/k8s.191.tar.gz)


## 快速指南

单机快速体验k8s集群的测试、开发环境--[AllinOne部署](docs/quickStart.md)；在国内的网络环境下要比官方的minikube方便、简单很多。

## 安装步骤

1. [集群规划和基础参数设定](docs/00-集群规划和基础参数设定.md)
1. [创建CA证书和环境配置](docs/01-创建CA证书和环境配置.md)
1. [安装etcd集群](docs/02-安装etcd集群.md)
1. [配置kubectl命令行工具](docs/03-配置kubectl命令行工具.md)
1. [安装docker服务](docs/04-安装docker服务.md)
1. [安装kube-master节点](docs/05-安装kube-master节点.md)
1. [安装kube-node节点](docs/06-安装kube-node节点.md)
1. [安装calico网络组件](docs/07-安装calico网络组件.md)
1. [安装flannel网络组件](docs/07-安装flannel网络组件.md)

## 使用指南

- 常用插件部署  [kubedns](docs/guide/kubedns.md) [dashboard](docs/guide/dashboard.md) [heapster](docs/guide/heapster.md) [ingress](docs/guide/ingress.md) [efk](docs/guide/efk.md) [harbor](docs/guide/harbor.md)
- K8S 特性实验  [HPA](docs/guide/hpa.md) [NetworkPolicy](docs/guide/networkpolicy.md)
- 集群运维指南
- 应用部署实践

请根据这份 [目录](docs/guide/index.md) 阅读你所感兴趣的内容，尚在更新中...

## 参考阅读

1. 建议阅读 [rootsongjc-Kubernetes指南](https://github.com/rootsongjc/kubernetes-handbook) 原理和实践指南。
1. 建议阅读 [feisky-Kubernetes指南](https://github.com/feiskyer/kubernetes-handbook/blob/master/SUMMARY.md) 原理和部署章节。
1. 建议阅读 [opsnull-安装教程](https://github.com/opsnull/follow-me-install-kubernetes-cluster) 二进制手工部署。



