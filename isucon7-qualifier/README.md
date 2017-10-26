# ansible-isucon/isucon7-qualifier

## Overview

Ansible playbook for [ISUCON7-qualifier](http://isucon.net/archives/50949022.html)

## Requirement

- Ubuntu 16.04

## Usage

Remote:
```
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon7-qualifier
${EDITOR} remote
ansible-playbook -i remote playbook.yml
```

Local:
```
apt-get update
apt-get install -y ansible git
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon7-qualifier
# for image
ansible-playbook -i local image.yml
# for bench
ansible-playbook -i local bench.yml
```

## 本来の設定と異なるところ

- ベンチマークはCLIから手動で実行する必要があります

## References

- [ISUCON7 予選レギュレーション](http://isucon.net/archives/50927022.html)
- [ISUCON7 予選 当日マニュアル](https://gist.github.com/941/8c64842b71995a2d448315e2594f62c2)
- [isucon/isucon7-qualify](https://github.com/isucon/isucon7-qualify)
- [vagrant-isucon](https://github.com/matsuu/vagrant-isucon)
