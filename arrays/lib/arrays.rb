class Array

  def my_uniq
    uniq_array = []
    self.each do |el|
      uniq_array << el unless uniq_array.include?(el)
    end
    uniq_array
  end

  def two_sum
    answer = []
    self.each_with_index do |el1, idx1|
      self.each_with_index do |el2, idx2|
        answer << [idx1, idx2] if el1 + el2 == 0 && idx1 != idx2
      end
    end
    answer
  end

  def my_transpose
    new_array = []
    self.count.times { new_array << [] }
    self.each do |sub_array|
      sub_array.each_with_index do |el, idx|
        new_array[idx] << el
      end
    end
    new_array
  end

end

def stock_picker(stocks)
  best_profit = 0
  dates = []

  stocks.each_with_index do |buy_price, buy_day|
    stocks.each_with_index do |sell_price, sell_day|
      this_profit = sell_price - buy_price
      if this_profit > best_profit && sell_day > buy_day
        best_profit = this_profit
        dates = [buy_day, sell_day]
      end
    end
  end
  dates
end










