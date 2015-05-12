require 'spec_helper'
require 'pp'
pp os

describe "example.comのテスト" do
  #システム共通事項テスト
  #テストするポート番号
  ports = ["80","443","22"]
  #テストするパッケージたち
  packages = ["ntpd","httpd","vsftpd"]
  
  #パラメータセット
  params = {
            :ports => ports,
            :packages => packages,
            }
  #テスト呼び出し
  include_examples 'system::default', params

  #Apache共通事項テスト
  include_examples 'apache::default'
  
  describe "VirtualHostの設定テスト" do
    describe file('/etc/httpd/conf.d/example.com.conf') do
      it { should be_file }
      it { should contain "ServerName example.com" }
      it { should contain("*:443").after(/VirtualHost/) }
      it { should contain("*:80").after(/VirtualHost/) }
      it { should contain "DocumentRoot /var/www/html" }
    end
  end
end
