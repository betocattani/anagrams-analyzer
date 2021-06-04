require './lib/analyzer'

RSpec.describe Analyzer do
  describe '#are_anagrams' do
    it 'returns true if is an anagram' do
      expect(Analyzer.are_anagrams?('thing', 'night')).to be true
    end

    it 'another example' do
      expect(Analyzer.are_anagrams?('listen', 'silent')).to be true
    end

    it 'returns false if does not an anagram' do
      expect(Analyzer.are_anagrams?('think', 'night')).to be false
    end
  end

  describe '#get_anagram_group' do
    it 'returns a group' do
      word_list = %w[thing listen think silent night]
      expected_result = [['thing', 'night'], ['listen', 'silent'], ['think']]

      expect(Analyzer.get_anagram_group(word_list)).to eq expected_result
    end
  end
end
