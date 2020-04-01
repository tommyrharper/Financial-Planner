require 'gruff'

saving_pm = 825
interest_rate_pa = 1.1
years = 24
starting_cash = 16360

def calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)

  total = starting_cash

  years.times {
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
  }

  total

end
