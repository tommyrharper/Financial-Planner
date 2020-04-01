require_relative 'graph'

class Calculator

  attr_reader :years, :totals
  attr_accessor 

  STARTING_YEAR = 2020
  DEFAULT_INTEREST_RATE = 1.1 # 10%
  DEFAULT_SAVING_INCREASE_PA = 0
  DEFAULT_SAVING_PM = 0

  def initialize(starting_cash, saving_pm = DEFAULT_SAVING_PM)
    @starting_cash = starting_cash
    @years = [STARTING_YEAR]
    @year = STARTING_YEAR
    @totals = [starting_cash]
    @interest_rate_pa = DEFAULT_INTEREST_RATE
    @saving_increase_pa = DEFAULT_SAVING_INCREASE_PA
    @saving_pm = saving_pm
  end

  def calculate(years, saving_pm = @saving_pm, interest_rate_pa = @interest_rate_pa)
    total = @starting_cash

    years.times {
      @year += 1 
      total += saving_pm * 12
      total = total * @interest_rate_pa
      saving_pm = saving_pm + @saving_increase_pa
      @totals << total.round
      @years << @year
    }

    @year = STARTING_YEAR
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
  }
  total = total.round
end