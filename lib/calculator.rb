require_relative 'graph'

class Calculator

  attr_reader :years_array, :totals
  attr_accessor :saving_pm, :interest_rate_pa, :years, :starting_cash, :saving_increase_pa

  STARTING_YEAR = 2020
  DEFAULT_INTEREST_RATE = 1.1 # 10%
  DEFAULT_SAVING_INCREASE_PA = 0
  DEFAULT_SAVING_PM = 0
  DEFAULT_STARTING_CASH = 0
  DEFAULT_YEARS = 30

  def initialize(starting_cash = DEFAULT_STARTING_CASH, saving_pm = DEFAULT_SAVING_PM)  
    @years_array = [STARTING_YEAR]
    @totals = [starting_cash]
    @year = STARTING_YEAR

    @starting_cash = starting_cash
    @years = DEFAULT_YEARS
    @interest_rate_pa = DEFAULT_INTEREST_RATE
    @saving_increase_pa = DEFAULT_SAVING_INCREASE_PA
    @saving_pm = saving_pm
  end

  def calculate(years = @years, saving_pm = @saving_pm, interest_rate_pa = @interest_rate_pa)
    total = @starting_cash

    years.times {
      @year += 1 
      total += saving_pm * 12
      total = total * @interest_rate_pa
      saving_pm = saving_pm + @saving_increase_pa
      @totals << total.round
      @years_array << @year
    }

    @year = STARTING_YEAR
    total = total.round

  end

  def show_info
    hash = {
      "Starting cash: " =>  @starting_cash,
      "Saving pm: " => @saving_pm,
      "Interest rate pa: " => @interest_rate_pa,
      "Years: " => @years,
      "Saving increase pa: " => @saving_increase_pa
    }
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




    #puts "Starting cash: " + @starting_cash.to_s
    #puts "Saving pm: " + @saving_pm.to_s
    #puts "Interest rate pa: " + @interest_rate_pa.to_s
    #puts "Years: " + @years.to_s
    #puts "Saving increase pa: " + @saving_increase_pa.to_s