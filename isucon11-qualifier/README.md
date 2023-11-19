# ansible-isucon/isucon11-qualifier

## Overview

Ansible playbook for [isucon11-qualify](https://github.com/isucon/isucon11-qualify)

## Requirement

* Ubuntu 20.04

## Usage

Remote:
```
apt-get update
apt-get install -y ansible git
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon11-qualifier
${EDITOR} standalone.hosts
ansible-playbook -i standalone.hosts site.yml
```

Local:
```
apt-get update
apt-get install -y ansible git
git clone https://github.com/matsuu/ansible-isucon.git
cd ansible-isucon/isucon11-qualifier
ansible-playbook -i standalone.hosts --connection=local site.yml
```

## 本来の設定と異なるところ

* SSL証明書は自己署名のものを用意しています
    * ベンチマークからのアクセスが証明書エラーとならないよう /usr/share/ca-certificates/isucon に証明書を設置しています
* 1台構成で動作するように以下のファイルを書き換えています
    * /etc/hosts
    * /var/lib/cloud/scripts/per-instance/generate-env.sh
* ベンチマークはCLIから手動で実行する必要があります
    ```sh
    sudo -i -u isucon
    cd bench
    # 本番同様にnginx(https)へアクセスを向けたい場合
    ./bench -all-addresses 127.0.0.11 -target 127.0.0.11:443 -tls -jia-service-url http://127.0.0.1:4999
    # isucondition(3000)へ直接アクセスを向けたい場合
    ./bench -all-addresses 127.0.0.11 -target 127.0.0.11:3000 -jia-service-url http://127.0.0.1:4999
    ```

## References

* [ISUCON11 予選レギュレーション](https://isucon.net/archives/55854734.html)
* [ISUCON11 予選 当日マニュアル](https://github.com/isucon/isucon11-qualify/blob/main/docs/manual.md)
* [isucon/isucon11-qualify](https://github.com/isucon/isucon11-qualify)
* [vagrant-isucon](https://github.com/matsuu/vagrant-isucon)
