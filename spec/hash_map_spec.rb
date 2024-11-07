require_relative '../Section1/hashmap_task/hash_map'
require 'rspec'

# frozen_string_literal: true

describe HashMap do
  let(:hash) { HashMap.new }

  describe '#set' do
    it 'add a new key value pair in a hash map' do
      hash.set('Öykü', 'test')
      expect(hash.all_data.size).to eq(1)
      expect(hash.get('Öykü')).to eq('test')
    end

    it 'update an existing value' do
      hash.set('Öykü', 'test')
      hash.set('Öykü', 'test6')
      expect(hash.get('Öykü')).to eq('test6')
    end
  end

  describe '#get' do
    it 'retrieve the value for an existing key' do
      hash.set('Öykü', 'test')
      expect(hash.get('Öykü')).to eq('test')
    end

    it 'when we send a non-existing key' do
      expect(hash.get('NonExistent')).to be_nil
    end
  end

  describe '#search' do
    it 'when the key find it should be return true' do
      hash.set('Öykü', 'test')
      expect(hash.search('Öykü')).to be true
    end

    it "returns false if the key doesnt't exist" do
      expect(hash.search('NonExistent')).to be false
    end
  end

  describe '#remove' do
    it 'removes an existing key' do
      hash.set('Öykü', 'test')
      expect(hash.remove('Öykü')).to be true
      expect(hash.get('Öykü')).to be_nil
    end
    it 'returns false for a non-existing key' do
      expect(hash.remove('NonExistent')).to be false
    end
  end

  describe '#remove_all' do
    it 'removes all key-value pairs from the hash map' do
      hash.set('Öykü', 'test')
      hash.set('Öykü2', 'test2')
      hash.set('Öykü3', 'test3')

      expect(hash.all_data.size).to eq(3)

      hash.remove_all
      expect(hash.all_data.size).to eq(0)
    end
  end

  describe '#all_data' do
    hash.set('Öykü', 'test')
    hash.set('Öykü2', 'test2')
    expect(hash.all_data).to eq([{ key: 'Öykü', value: 'test' }, { key: 'Öykü2', value: 'test2' }])
  end
end
