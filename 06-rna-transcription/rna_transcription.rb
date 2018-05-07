class Complement

  DNA = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }
  RNA = { 'G' => 'C', 'C' => 'G', 'A' => 'T', 'U' => 'A' }

  def self.of_dna(string)
    string = string.split("")

    string.each do |char|
      if DNA[char]
        new_char = DNA[char]
        char.replace(new_char)
      else
        raise ArgumentError
      end
    end
    return string.join
  end

  def self.of_rna(string)
    string = string.split("")

    string.each do |char|
      if RNA[char]
        new_char = RNA[char]
        char.replace(new_char)
      else
        raise ArgumentError
      end
    end
    return string.join
  end

end
