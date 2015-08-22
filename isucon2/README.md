# ansible-isucon/isucon2

## Overview

Ansible playbook for [ISUCON2](http://isucon.net/archives/41251926.html)

## Rquirement

- CentOS 6.x

## Usage

Remote:
```
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon2
echo 192.0.2.1 > hosts
ansible-playbook -i hosts playbook.yml
```

Local:
```
yum install -y epel-release git
yum install -y ansible
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon2
ansible-playbook -i local playbook.yml
```

## 本来の設定と異なるところ

- rubyのバージョンを依存関係解決のため1.9.3p551に変更しています
- MySQLのバージョンを5.5からMySQL GA最新版(現在は5.6系)に変更しています
- Javaがうまくコンパイルできないので諦めました

## References

- [自家製 #isucon2 のつくりかた](http://blog.livedoor.jp/techblog/archives/67728751.html)
- [tagomoris/isucon2](https://github.com/tagomoris/isucon2)
- [vagrant-isucon](https://github.com/matsuu/vagrant-isucon)
