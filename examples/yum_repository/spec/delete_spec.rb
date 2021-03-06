require 'chefspec'

describe 'yum_repository::delete' do
  let(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'centos', version: '7.5.1804')
                          .converge(described_recipe)
  end

  it 'removes a yum_repository with delete action' do
    expect(chef_run).to delete_yum_repository('explicit_delete_action')
  end
end
