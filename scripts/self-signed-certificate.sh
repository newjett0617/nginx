#!/usr/bin/env sh

## 使用 openssl image 產生自簽憑證
docker run \
    --interactive \
    --tty \
    --rm \
    --name openssl \
    --volume "${PWD}"/ssl/:/export \
    docker.io/frapsoft/openssl:latest \
    req \
    -x509 \
    -days 3650 \
    -nodes \
    -newkey rsa:2048 \
    -keyout /export/ssl.key \
    -out /export/ssl.csr \
    -subj "/C=TW/ST=Taiwan/L=Taiwan/O=localhost/OU=localhost/CN=localhost/emailAddress=admin@localhost"

# `req`: PKCS#10 X.509 Certificate Signing Request (CSR) Management
# `x509`: 輸出自簽名 certificate，通常用於生成測試 certificate 或自簽名的 root CA
# `days`: 指定 certificate 有效的天數，預設值為 30 天
# `nodes`: 不會幫 private key 加密
# `newkey rsa:2048`: 建立一個 2048 bits 的 RSA key
# `keyout`: 輸出 key 的檔案
# `out`: 輸出 certificate 檔案
# `subj`: certificate 的相關資訊