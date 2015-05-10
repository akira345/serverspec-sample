shared_examples 'apache::service' do

  describe "Apacheのサービスが登録され、有効化されているか？" do
    describe service('httpd'), :if => os[:family] == 'redhat' do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('apache2'), :if => os[:family] == 'ubuntu' do
      it { should be_enabled }
      it { should be_running }
    end

    describe service('httpd'), :if => os[:family] == 'amazon' do
      it { should be_enabled }
      it { should be_running }
    end
  end

end

