#!/bin/bash
set -xe;
zip -9er cred.zip cred/;
sha256sum cred.zip > cred.zip.sha256sum;
zip -9er cred.zip.zip cred.zip cred.zip.sha256sum;
sha256sum cred.zip.zip > cred.zip.zip.sha256sum;
rm -v cred.zip cred.zip.sha256sum;
git commit -asm "Sync credentials";
