class StringCalculator

  def self.add(input)
    numbers = input.split(/\n|,|\D/)
    numbers.inject(0) do |sum, number|
        sum + number.to_i
    end
  end

end
