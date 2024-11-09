require_relative '../Section1/hashmap_task/hash_map'
require 'rspec'

# frozen_string_literal: true

describe HashMap do
  let(:hash) { HashMap.new }

  describe 'find_pair' do
    it 'retrieve the pair for an existing key' do
      hash.set('Ali', '0555 123 45 67')
      result = hash.find_pair('Ali')
      expect(result).to eq({ key: 'Ali', value: '0555 123 45 67' })
    end

    it 'returns nil for a non-exiting key' do
      result = hash.find_pair('NonExistent')
      expect(result).to be_nil
    end
  end

  describe '#get' do
    it 'retrieves the value for an existing key' do
      hash.set('Ayşe', '0532 987 65 43')
      expect(hash.get('Ayşe')).to eq('0532 987 65 43')
    end

    it 'returns nil for a non-existing key' do
      expect(hash.get('NonExistent')).to be_nil
    end
  end

  describe '#set' do
    it 'add a new key value pair in a hash map' do
      hash.set('Ayşe', '0532 987 65 43')
      expect(hash.all_data.size).to eq(1)
      expect(hash.get('Ayşe')).to eq('0532 987 65 43')
    end

    it 'update an existing value' do
      hash.set('Ayşe', '0532 987 65 43')
      hash.set('Ayşe', '0541 907 43 12')
      expect(hash.get('Ayşe')).to eq('0541 907 43 12')
    end
  end

  describe '#search' do
    it 'returns true if the key exists' do
      hash.set('Mehmet', '0544 456 78 90')
      expect(hash.search('Mehmet')).to be true
    end

    it 'returns false if the key does not exist' do
      expect(hash.search('NonExistent')).to be false
    end
  end

  describe '#remove' do
    it 'removes an existing key and returns true' do
      hash.set('Ali', '0555 123 45 67')
      expect(hash.remove('Ali')).to be true
      expect(hash.get('Ali')).to be_nil
    end

    it 'returns false for a non-existing key' do
      expect(hash.remove('NonExistent')).to be false
    end
  end

  describe '#remove_all' do
    it 'removes all key-value pairs from the hash map' do
      hash.set('Ali', '0555 123 45 67')
      hash.set('Ayşe', '0532 987 65 43')
      hash.set('Mehmet', '0544 456 78 90')

      expect(hash.all_data.size).to eq(3)

      hash.remove_all
      expect(hash.all_data.size).to eq(0)
    end
  end

  describe '#all_data' do
    it 'returns all key-value pairs' do
      hash.set('Ali', '0555 123 45 67')
      hash.set('Ayşe', '0532 987 65 43')
      expect(hash.all_data).to eq([{ key: 'Ali', value: '0555 123 45 67' }, { key: 'Ayşe', value: '0532 987 65 43' }])
    end

    it 'returns an empty array when no data exists' do
      expect(hash.all_data).to eq([])
    end
  end
end
