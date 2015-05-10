# ServerSpecのサンプルです。
[Advanced Tips](http://serverspec.org/advanced_tips.html)を参考に、機能ごとにテストを分けています。
サーバの機能用件によっては、個別テストを組み合わせれるよう、テストは単機能にしています。
ある程度共通事項のテストはdefaultでまとめてテストできるようにしています。

specinfraにAmazonLinuxを判定するよう改造しています。
