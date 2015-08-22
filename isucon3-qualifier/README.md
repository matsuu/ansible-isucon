# ansible-isucon/isucon3-qualifier

## Overview

Ansible playbook for [ISUCON3-qualifier](http://isucon.net/archives/41252102.html)

## Requirement

- CentOS 6.x

## Usage

Remote:
```
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon3-qualifier
echo 192.0.2.1 > hosts
ansible-playbook -i hosts playbook.yml
```

Local:
```
yum install -y epel-release git
yum install -y ansible
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon3-qualifier
ansible-playbook -i local playbook.yml
```

## 本来の設定と異なるところ

- goのバージョンを依存関係解決のため1.1.2から1.3に変更しています
- phpのバージョンを5.4系(Amazon Linux標準)から5.3系(CentOS6標準)に変更しています
- rubyのバージョンを依存関係解決のため2.0.0p247から2.0.0p645に変更しています
- MySQLのバージョンを5.6.14からMySQL GA最新版(現在は5.6系)に変更しています
- MySQLの起動スクリプトを/etc/init.d/mysqlから/etc/init.d/mysqldに変更しています
- ログインユーザをec2-userからvagrantに変更しています
- supervisordの起動スクリプトをLSB準拠に修正しています

## References

- [ISUCON3(2013) オンライン予選レギュレーション](http://isucon.net/archives/31526183.html)
- [オンライン予選で使用した問題が手元で再現できるAMIを公開しました](http://isucon.net/archives/32971265.html)
- [kayac/isucon3](https://github.com/kayac/isucon3)
- [vagrant-isucon](https://github.com/matsuu/vagrant-isucon)
