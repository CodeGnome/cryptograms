class Cryptogram
  attr_reader :cyphertext, :plaintext, :key
  ALPHABET = (?A..?Z).to_a.map(&:freeze).freeze

  def initialize plaintext
    @plaintext = plaintext.upcase
    @cyphertext = @plaintext.tr ALPHABET.join, cypher.join
  end

  # Randomize until no cyphertext replacement is the same as the original
  # letter.
  def cypher
    loop do
      (@key ||= ALPHABET.dup).shuffle!
      redo if @key.zip(ALPHABET).any? { |k, v| k == v }
      return @key
    end
  end

  private

  def rosetta_stone
    ALPHABET.zip @key
  end
end

if __FILE__ == $0
  c = Cryptogram.new ARGV[0]
  puts c.cyphertext
end
