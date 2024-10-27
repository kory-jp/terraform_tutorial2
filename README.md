# コンテナ上にて Terraform の実行環境を構築

## 環境変数を設定

.bashrc, .zshrc にアクセスキーとシークレットアクセスキーの環境変数を設定

```
export AWS_ACCESS_KEY_ID=xxxxxxxxxxx
export AWS_SECRET_ACCESS_KEY=xxxxxxxxxxx
```

キーペア作成

```
$./ssh/ ssh-keygen -t rsa -f ec2-keypair
```

## コマンド

```
terraform plan
terraform apply
terraform destory
```

EC2 へのログイン

```
ssh -i ec2-keypair ec2-user@******

enter password
```

## 参考サイト

https://envader.plus/article/162
