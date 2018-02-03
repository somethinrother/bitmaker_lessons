class Changer
  def self.make_change(dollar_amount)
    coins = []
    until dollar_amount / 25 == 0
      coins << 25
      dollar_amount -= 25
    end

    until dollar_amount / 10 == 0
      coins << 10
      dollar_amount -= 10
    end

    until dollar_amount / 5 == 0
      coins << 5
      dollar_amount -= 5
    end

    until dollar_amount / 1 == 0
      coins << 1
      dollar_amount -= 1
    end
    coins
  end
end
