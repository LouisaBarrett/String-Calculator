class StringCalculator

   def self.add(input)
    if input.include?("-")
      negs = input.scan(/-\d+/)
      raise "negatives not allowed, negatives passed: #{negs.join(', ')}"
    else
      numbers = input.split(/\n|,|\D/)
      numbers.inject(0) do |sum, number|
        sum + number.to_i
      end
    end
  end

end
