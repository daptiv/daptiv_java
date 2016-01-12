require_relative 'spec_helper_linux'

describe 'daptiv_java::linux' do
  let(:chef_run) do
    ChefSpec::ServerRunner.new do |node|
    end.converge(described_recipe)
  end

  it 'includes the apt coobkook' do
    expect(chef_run).to include_recipe('apt')
  end

  it 'includes the java coobkook' do
    expect(chef_run).to include_recipe('java')
  end
end
