class Lexicon

  @@directions = %w[north south east west down up left right back]
  @@stop_words = %w[the in of from at it]
  @@verbs = %w[go stop kill eat]
  @@nouns = %w[door bear princess cabinet]
  @@number_pattern = "^[0-9]+$"

  def self.scan(input)
    words = input.split
    return words.map { |word| type_and_word(word.downcase, word) }
  end

  def self.type_and_word(word, original)
    if @@directions.include? word then
      return ['direction', original]
    elsif @@stop_words.include? word
      return ['stop', original]
    elsif @@verbs.include? word
      return ['verb', original]
    elsif @@nouns.include? word
      return ['noun', original]
    elsif word.match(@@number_pattern)
      return ['number', word.to_i]
    else
      return ['error', original]
    end
  end
end
