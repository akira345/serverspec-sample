shared_examples 'apache::default' do

  describe "Apache基本テスト" do
    include_examples 'apache::install'
    include_examples 'apache::service'
    include_examples 'apache::port_80'
    include_examples 'apache::port_443'

  end

end

