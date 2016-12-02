describe 'daptiv_java::windows' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new do
    end.converge(described_recipe)
  end

  it 'jdk version should be set to 7' do
    expect(chef_run.node['java']['jdk_version']).to eq('7')
  end

  it 'java recipe is included' do
    expect(chef_run).to include_recipe 'java'
  end

  it 'url is set to internal daptiv url' do
    expect(chef_run.node['java']['windows']['url']).to eq(
      'http://artrepo.daptiv.com:8081/artifactory/installs/vagrant/jdk-7u21-windows-x64.exe'
    )
  end

  it 'checksum is set' do
    expect(chef_run.node['java']['windows']['checksum']).to eq(
      'fe70ca8ea1a86f6950a2bca966733f274d00a8ed23ac54457c5fbe76833f71e9'
    )
  end

  it 'package name is set' do
    expect(chef_run.node['java']['windows']['package_name']).to eq(
      'Java SE Development Kit 7 Update 21 (64-bit)'
    )
  end

  it 'setx is called with java home' do
    expect(chef_run).to run_execute(
      'setx -m JAVA_HOME "C:\Program Files\Java\jdk1.7.0_21"'
    )
  end
end
