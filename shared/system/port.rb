shared_examples 'system::port' do |param|
  ports = param[:ports]
  ports.each do |port|
    describe "Port#{port}番が開いているか？" do
      describe port(port) do
        it { should be_listening }
      end
    end
  end
end

