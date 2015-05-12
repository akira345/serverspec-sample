shared_examples 'system::default' do |params|

  describe "システム基本テスト" do
    include_examples 'system::install',params
    include_examples 'system::port',params

  end

end

