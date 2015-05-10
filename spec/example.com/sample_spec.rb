require 'spec_helper'
require 'pp'
pp os

describe "example.comのテスト" do
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
