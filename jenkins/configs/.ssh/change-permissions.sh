#!/bin/bash
whoami
echo -e  "-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEAtEez+GtwLDpCQBqTDEvrlj4HkPS2nDLJjzT6/1BuVHM15Syj
evD0LgnUV53yqAEkwj/evdnktObZeVYcHuodP/dc+cgkJg8cL620jkb3D8ndor3O
m3CIVypqPrAuvIdn0wtlN5gxxVnjabv+S8oNcqqdTr+sUwefPdIrmTPLgte52Die
NHGGtP7hNzP6yrRNnYMmc3g35A1Tf3zb1E9TWRS6Z0Kl/AslP5sxen483kZipWS8
DRLBR8THhLxKilPCLoiFeOb64+Kpniw1HIcclcD2vWKM1l7GkszjQHZyrsGuQIPE
9S5vUn0Th1DV6suS/zVEYXcD+UKnzB7DmNkwdQIDAQABAoIBAQCBFmKwu8Wbda/g
lOa8RFSRxSLH0eI8IEWhTG95h88om0J5MihxLL27hYBNqKSLVh5LFU7aJH6WZkJM
lrMWE88T8XzawkvYELO/FCOYSQo5fPM9x6l8Nez6dT2UW7Vre42FWcCFOW5SANZM
7Lbe7/QHKlHvhGHRJkEJFEfxsFvF+JxBVDZbdwMEvtuCePK3QD40KxzCsm03+Ejq
hSNBiaAJaihmECXETzDN4M5bM8v/RtfEclSChMLHemZ2eoJEmeMsfZm98FuMQYhz
7z9T2XSLeQ95k7A08qB2d7mlg+tM6Kj0h0SoCtLfsy21+ZvXC0l5wVmxDkLrhRe6
KweQiJtVAoGBAOPrO9KFX/gMM7lac7NtSkXqlwgpwffxmHDgdWMA0ZjDNn+R37If
fv1RtvqeyoZzui/Y7cn3DYlB3/kZw+xFDBBzr+0/v09FtQTAnZLDr8ob5ehebxEU
NZGCulsdPjaMiK4gelmqTrZ9gRk8SRkLv7LgcvoqxUtT0K2XztYhONUrAoGBAMp9
5icIyLzOkQ455F6wyv1hd8HuWe42wmkup9H+lqgGvgR0Py7oMHUgZ28x4jqJijv6
dSPjWw/ANmVVW0S3rSy0yryn+RctI5M8pPSsEtIee1wgg7eAT6jI//0Y9e1M431c
a4rRHWfDfSl4Mr4mUww1okafMiOENMSLdi/cRoDfAoGAZEQVAi0YpgfALXeEVNfs
h8uG+9la8pe/J1EncxFmI50leYOT9El01T5AkAqRMArzSp9VJLdhphNr06spDOTn
RMmQCIA1ykrxMpEGAQ3DZNdXEh2RIONSGZx4HSNFPjwe2POCv7VzgUa/J3nk8na/
s5KYIkP0nYnW0LdrD7p3xRcCgYBBz7FhtmUnmCtk6EPk0qjmuSrnCMSJu5pr/RHm
Gkx0x9wyLmXqpOQ67REw/pF8XP9khv5Tb61E7T/Ap4FGUDwkb44EysMWWUFatTcX
nmVvjSCizJ6CoV1CijFI3TfwrDCzqbn6IATimJKxS7OSQXp0WWoocc0l5e4QgxMi
cwEnGQKBgQDiSjzymrlb8j/H17dSqpv7UHdT2MB0Vir/N8lg5XZ6U5h5L5AId6SP
xhJsU+3ayxWb5uQZbn8D4WnlsFpoT0LCjG54T6MokEnNWNmZ+LZjmqorFi1JylR6
Ca5csUG7CFuS4YPWUJ2IIvMYSKKGq7zF//AedAxkaJLkHjQea4b4ew==
-----END RSA PRIVATE KEY-----\n" > /var/jenkins_home/.ssh/id_rsa

mv /var/jenkins_home/.ssh/id_rsa /tmp/ &&\
find /tmp/id_rsa -exec chmod 600 {} \; &&\
mv /tmp/id_rsa /var/jenkins_home/.ssh/id_rsa &&\
chown jenkins:jenkins /var/jenkins_home/.ssh/id_rsa

exit 0