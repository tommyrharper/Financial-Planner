require_relative 'graph'

class Calculator
  def initialize(starting_cash, year = 2020)
    @starting_cash = starting_cash
    @year = year
  end

  def calculate(saving_pm, interest_rate_pa, years, starting_cash = @starting_cash, saving_increase = 0)
    i = 2020
    total = starting_cash
    years.times {
      i += 1 
      total += saving_pm * 12
      total = total*interest_rate_pa
      saving_pm = saving_pm + saving_increase
      #@total << total
      #@year << i
    }
    total = total.round
  end

end

def calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
  i = 2020
  total = starting_cash
  years.times {
    i += 1 
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
    #@total << total
    #@year << i
  }
  total = total.round
end