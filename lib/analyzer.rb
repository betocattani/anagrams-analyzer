# frozen_string_literal: true

class Analyzer
  def self.are_anagrams?(word, another_word)
    word.chars.sort == another_word.chars.sort
  end

  def self.get_anagram_group(words_list)
    anagrams = {}

    words_list.each do |word|
      sorted_word = word.chars.sort.join('')

      if anagrams.include?(sorted_word)
        anagrams[sorted_word].push(word)
      else
        anagrams[sorted_word] = [word]
      end
    end

    anagrams.values
  end
end
