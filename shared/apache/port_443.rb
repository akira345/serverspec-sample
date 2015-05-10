shared_examples 'apache::port_443' do

  describe "Port443番が開いているか？" do
    describe port(443) do
      it { should be_listening }
    end
  end

end

