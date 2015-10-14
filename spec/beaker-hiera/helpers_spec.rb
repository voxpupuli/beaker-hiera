require 'spec_helper'

class ClassMixedWithDSLHelpers
  include BeakerTestHelpers
  include Beaker::DSL::Helpers::Hiera

  def logger
    RSpec::Mocks::Double.new('logger').as_null_object
  end

end

describe ClassMixedWithDSLHelpers do
  let( :host  ) { make_host( 'master', :roles => %w( master agent default) ) }
  let( :hosts ) { [ host ] }

  describe "#write_hiera_config_on" do
    let(:hierarchy) { [ 'nodes/%{::fqdn}', 'common' ] }
    it 'on FOSS host' do
      host = make_host('testhost', { :platform => 'ubuntu' } )
      hiera_config = '/usr/face'
      allow( host ).to receive( :puppet ) { { 'hiera_config' => hiera_config } }
      expect(subject).to receive(:create_remote_file).with(host, hiera_config, /#{host[:hieradatadir]}/)
      subject.write_hiera_config_on(host, hierarchy)
    end

    it 'on PE host' do
      host = make_host('testhost', { :platform => 'ubuntu', :type => 'pe' } )
      hiera_config = '/usr/face'
      allow( host ).to receive( :puppet ) { { 'hiera_config' => hiera_config } }
      expect(subject).to receive(:create_remote_file).with(host, hiera_config, /#{host[:hieradatadir]}/)
      subject.write_hiera_config_on(host, hierarchy)
    end

  end

  describe "#write_hiera_config" do
    let(:hierarchy) { [ 'nodes/%{::fqdn}', 'common' ] }
    it 'delegates to #write_hiera_config_on with the default host' do
      allow( subject ).to receive( :hosts ).and_return( hosts )
      allow( subject ).to receive( :default ).and_return( host )
      expect( subject ).to receive( :write_hiera_config_on ).with( host, hierarchy).once
      subject.write_hiera_config( hierarchy )
    end

  end

  describe "#copy_hiera_data_to" do
    let(:path) { 'spec/fixtures/hieradata' }
    it 'on FOSS host' do
      host = make_host('testhost', { :platform => 'ubuntu' } )
      expect(subject).to receive(:scp_to).with(host, File.expand_path(path), host[:hieradatadir])
      subject.copy_hiera_data_to(host, path)
    end

    it 'on PE host' do
      host = make_host('testhost', { :platform => 'ubuntu', :type => 'pe' } )
      expect(subject).to receive(:scp_to).with(host, File.expand_path(path), host[:hieradatadir])
      subject.copy_hiera_data_to(host, path)
    end
  end

  describe "#copy_hiera_data" do
    let(:path) { 'spec/fixtures/hieradata' }
    it 'delegates to #copy_hiera_data_to with the default host' do
      allow( subject ).to receive( :hosts ).and_return( hosts )
      allow( subject ).to receive( :default ).and_return( host )
      expect( subject ).to receive( :copy_hiera_data_to ).with( host, path).once
      subject.copy_hiera_data( path )
    end

  end

  describe '#hiera_datadir' do
    it 'returns the codedir based hieradatadir for AIO' do
      host['type'] = :aio
      codedir = '/usr/code'
      allow( host ).to receive( :puppet ) { { 'codedir' => codedir } }
      correct_answer = File.join(codedir, 'hieradata')
      expect( subject.hiera_datadir(host) ).to be === correct_answer
    end

    it 'returns the hieradata host value for anything not AIO (backwards compatible)' do
      host_hieradatadir_value = '/home/fishing/man/pants'
      host[:hieradatadir] = host_hieradatadir_value
      expect( subject.hiera_datadir(host) ).to be === host_hieradatadir_value
    end
  end

end
