class Hamming

  def initialize(strand1, strand2)
    @strand1 = strand1
    @strand2 = strand2
  end

  def check_length
    if strand1.length != strand2.length
      raise ArgumentError.new("Incompatible lengths")
    elsif strand1.length > 1 || strand2.length > 1
      raise ArgumentError.new("Lengths must be greater than zero")
    end
  end

  

end
