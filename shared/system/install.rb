shared_examples 'system::install' do |params|
  packages = params[:packages]
  packages.each do |package|
    describe "#{package}がインストールされているか？" do
      describe package(package) do
        it { should be_installed }
      end
    end
  end
end

