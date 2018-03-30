class Hamming

  def self.compute(strand1, strand2)
    if strand1.length != strand2.length
      raise ArgumentError.new("Incompatible lengths")
    elsif strand1.length < 1 || strand2.length < 1
      return 0
    end

    distance = 0
    start = 0

    while start < strand1.length
      if strand1[start] == strand2[start]
        start +=1
      else
        distance += 1
        start += 1
      end
    end

    return distance
  end

end
