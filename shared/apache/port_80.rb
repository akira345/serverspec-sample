shared_examples 'apache::port_80' do

  describe "Port80番が開いているか？" do
    describe port(80) do
      it { should be_listening }
    end
  end

end

