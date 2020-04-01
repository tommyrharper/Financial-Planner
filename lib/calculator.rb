require_relative 'graph'

class Calculator

  attr_reader :years

  STARTING_YEAR = 2020

  def initialize(starting_cash)
    @starting_cash = starting_cash
    @years = [STARTING_YEAR]
    @year = STARTING_YEAR
  end

  def calculate(saving_pm, interest_rate_pa, years, starting_cash = @starting_cash, saving_increase = 0)
    total = starting_cash
    years.times {
      @year += 1 
      total += saving_pm * 12
      total = total*interest_rate_pa
      saving_pm = saving_pm + saving_increase
      #@total << total
      @years << @year
    }
    @YEAR = STARTING_YEAR
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