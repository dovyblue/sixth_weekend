# Create a thesaurus program. To create it, you will create two classes, Thesaurus and Entry.
# A Thesaurus will contain many Entries. An Entry contains three primary attributes:
# word, synonymns, and antonyms. Your application should contain the following features:
# 1. The ability to add new words to a Thesaurus.
# 2. The ability to delete a word from a Thesaurus. 
# 3. The ability to look up a word's synonyms.
# 4. The ability to look up a word's antonyms.
# 5. The ability to add a synonym to a word.
# 6. The ability to add an antonym to a word.
#
# Part of the challenge is to determine which functionality belongs in the Thesaurus class,
# and which belongs in the Entry class.
class Thesaurus
  attr_reader :words
  def add_word(word, synonym, antonym)
    if !@words
      @words = {}
    end
    entry = Entry.new(word, synonym, antonym)
    @words[entry.word] = entry
  end

  def delete_word(word)
    @words.delete(word)
  end
 
end

class Entry
  attr_reader :word, :synonyms, :antonyms
  def initialize(word, synonym, antonym)
    @word = word
    @synonyms = [] << synonym
    @antonyms = [] << antonym
  end
  
  def add_synonym(synonym)
    synonyms << synonym
  end

  def add_antonym(antonym)
    antonyms << antonym
  end
end

thesaurus = Thesaurus.new
# add words
thesaurus.add_word("good", "great", "bad")
thesaurus.add_word("man", "guy", "blb")
p thesaurus.words
p "---------"
# delete word
thesaurus.delete_word("man")
p thesaurus.words
p "---------"
# look up synonyms and antonyms
p thesaurus.words["good"].synonyms
p thesaurus.words["good"].antonyms
p "---------"
# add synonym
thesaurus.words["good"].add_synonym("excellent")
p thesaurus.words["good"].synonyms
p "---------"
# add antonym
thesaurus.words["good"].add_antonym("poor")
p thesaurus.words["good"].antonyms