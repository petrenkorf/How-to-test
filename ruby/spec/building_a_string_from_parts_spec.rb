require 'spec_helper'

def build_string_from_parts(hash)
  return '' if hash.nil?

  ''.tap do |str|
    hash.each { |k, v| str << "#{k} is #{v}\n" }
  end
end

RSpec.describe 'build_string_from_parts' do
  context 'when hash is empty' do
    it { expect(build_string_from_parts({})).to be_empty }
  end

  context 'when hash contains single key' do
    it { expect(build_string_from_parts({ key: 'val' })).to eq "key is val\n" }
  end

  context 'when hash contains multiple keys' do
    it { expect(build_string_from_parts({ key1: 'val1', key2: 'val2' })).to eq "key1 is val1\nkey2 is val2\n" }
  end

  context 'when input is nil' do
    it { expect(build_string_from_parts(nil)).to be_empty }
  end
end
