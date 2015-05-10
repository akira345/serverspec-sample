shared_examples 'apache::install' do

  describe "Apacheがインストールされているか？" do
    describe package('httpd'), :if => os[:family] == 'redhat' do
      it { should be_installed }
    end
    describe package('apache2'), :if => os[:family] == 'ubuntu' do
      it { should be_installed }
    end
    describe package('httpd24'), :if => (os[:family] == 'amazon' && os[:release] == '2015.03') do
      it { should be_installed }
    end
  end

end

