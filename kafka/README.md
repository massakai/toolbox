# Apache Kafka ツール

ローカルでテストするために作ったスクリプト
----

- create_server_properties.sh
    - Kafkaに付属しているserver.propertiesを複製する
    - broker idに対して、ポート番号、ログディレクトリを一意に割り当てる
- start-server.sh
    - zookeeperを起動した後、複製したserver.propertiesを使ってbrokerのプロセスを起動する
