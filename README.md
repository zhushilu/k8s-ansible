# 原作者地址：[https://github.com/gjmzj/kubeasz](https://github.com/gjmzj/kubeasz)


# 利用Ansible部署kubernetes集群

## 组件版本

1. kubernetes	v1.13.x
1. etcd		v3.x.xx
1. docker	18.xx.0-ce
1. flannel	>v0.9.1

兼容版本：v1.13.x
安装包下载地址：
- https://st.zhusl.com/k8s/k8s.1-13-2.tar.gz

## 使用指南

在原基础上修改了部分参数，修改了针对1.13版本一些启动参数的变化，增加了kubelet证书的client证书自动签发。
配置api-server和调用kubelet时通过安全端口连接
增加了docker的参数优化。

## 详细安装命令

```bash
# 安装ansible（ubuntu换成apt-get即可）
yum install python-pip
pip install ansible
# pip install ansible -i https://pypi.tuna.tsinghua.edu.cn/simple

# git clone 
cd /etc/ansible  # 没有可以手动创建
git clone https://github.com/zhushilu/k8s-ansible.git
mv k8s-ansible/ansible.cfg  ./
# 视实际安装环境确定，allinone:所有组件安装在一个节点，hosts.m-master:master高可用（两个master：keepalived+haproxy）
mv k8s-ansible/example/hosts.allinone.example ./hosts
# 下载安装包
cd /etc/ansible
wget https://st.zhusl.com/k8s/k8s.1-10-4.tar.gz
tar zxf k8s.1-10-4.tar.gz

# 安装
cd /etc/ansible/k8s-ansible
ansible-playbook 01.prepare.yaml
ansible-playbook 02...
ansible-playbook 03...
...   ...
ansible-playbook 07.flannel.yml

# 检查安装结果
source /etc/profile
kubectl get nodes
kubectl version

#集群删除(会清理master,node,etcd,docker),慎重使用
ansible-palybook 99.clean.yml
```
## 安装dns，dashboard等
参考：https://github.com/zhushilu/kubernetes-manifests.git



