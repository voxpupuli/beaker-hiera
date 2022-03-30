require 'spec_helper'

class ClassMixedWithDSLHelpers
  include Beaker::DSL

  def logger
    RSpec::Mocks::Double.new('logger').as_null_object
  end
end

describe ClassMixedWithDSLHelpers do
  let(:host) { instance_double('Beaker::Host') }
  let(:puppet) do
    { 'codedir' => '/usr/code', 'hiera_config' => '/usr/face' }
  end

  before do
    allow(host).to receive(:puppet) { puppet }
  end

  describe '#write_hiera_config_on' do
    let(:hierarchy) { [{ 'name' => 'common', 'path' => 'common.yaml' }] }

    it 'on host' do
      expect(subject).to receive(:create_remote_file).with(host, '/usr/face', %r{datadir: "/usr/code/hieradata"})
      subject.write_hiera_config_on(host, hierarchy)
    end
  end

  describe '#write_hiera_config' do
    let(:hierarchy) { [{ 'name' => 'common', 'path' => 'common.yaml' }] }

    it 'delegates to #write_hiera_config_on with the default host' do
      expect(subject).to receive(:default).and_return(host)
      expect(subject).to receive(:write_hiera_config_on).with(host, hierarchy).once
      subject.write_hiera_config(hierarchy)
    end
  end

  describe '#copy_hiera_data_to' do
    let(:path) { 'spec/fixtures/hieradata' }

    it 'on host' do
      expect(subject).to receive(:scp_to).with(host, File.expand_path(path), '/usr/code/hieradata')
      subject.copy_hiera_data_to(host, path)
    end
  end

  describe '#copy_hiera_data' do
    let(:path) { 'spec/fixtures/hieradata' }

    it 'delegates to #copy_hiera_data_to with the default host' do
      expect(subject).to receive(:default).and_return(host)
      expect(subject).to receive(:copy_hiera_data_to).with(host, path).once
      subject.copy_hiera_data(path)
    end
  end

  describe '#hiera_datadir' do
    it { expect(subject.hiera_datadir(host)).to eq('/usr/code/hieradata') }
  end
end
