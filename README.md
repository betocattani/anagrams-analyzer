# Anagram Analyzer

Exercise how to find Anagrams in a word list

```rb
require './lib/analyzer'
=> true

# Analyzer.are_anagrams?(string, string) # -> boolean

Analyzer.are_anagrams?('thing', 'night') 
=> true
Analyzer.are_anagrams?('listen', 'silent')
=> true
Analyzer.are_anagrams?('think', 'night')
=> false
```


Analyzer a word list and returns a group of Anagram.
```rb
# Analyzer.get_anagram_groups([string]) -> [[string]]

Analyzer.get_anagram_group(['thing', 'listen', 'think', 'silent', 'night'])
=> [['thing', 'night'], ['listen', 'silent'], ['think']]
```
