require 'spec_helper'

# rubocop: disable Metrics/BlockLength
describe 'UniqChar' do
  context ':first_uniq_char' do
    it 'should respond to :first_uniq_char for a String object' do
      expect(String.instance_methods.include?(:first_uniq_char)).to be_truthy
    end

    it 'should return the first uniq character in a string' do
      x = 'aabbsc'
      expect(x.count('s')).to eq(1)
      expect(x.count('c')).to eq(1)
      expect(x.index('s') < x.index('c')).to be true

      expect(x.first_uniq_char).to eq('s')
    end

    it 'should return nil if string does not contain uniq char' do
      x = 'aabb'
      expect(x.first_uniq_char).to be_nil
    end
  end

  context ':first_uniq_char2' do
    it 'should respond to :first_uniq_char2 for a String object' do
      expect(String.instance_methods.include?(:first_uniq_char2)).to be_truthy
    end

    it 'should return the first uniq character in a string' do
      x = 'aabbsc'
      expect(x.count('s')).to eq(1)
      expect(x.count('c')).to eq(1)
      expect(x.index('s') < x.index('c')).to be true

      expect(x.first_uniq_char2).to eq('s')
    end

    it 'should return nil if string does not contain uniq char' do
      x = 'aabb'
      expect(x.first_uniq_char2).to be_nil
    end
  end
end
# rubocop: enable Metrics/BlockLength
