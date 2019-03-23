!#/bin/bash

# 安装git pip ansible
echo '安装git pip ansible.......'
sleep 2
yum install -y  git  python-pip
pip install ansible -i https://pypi.tuna.tsinghua.edu.cn/simple

# 获取安装脚本
echo ‘获取安装脚本’
sleep 2
git clone -b dev https://github.com/zhushilu/k8s-ansible.git
mv k8s-ansible /etc/ansible

# 获取k8s安装包
echo '获取k8s安装包'
sleep 2
cd /etc/ansible
wget https://st.zhusl.com/k8s/k8s.1-11-6.tar.gz
tar zxf k8s.1-11-6.tar.gz
rm -f k8s.1-11-6.tar.gz

echo ''
echo ''

echo 'cd /etc/ansible/k8s-ansible'
echo 'you can start install .........'