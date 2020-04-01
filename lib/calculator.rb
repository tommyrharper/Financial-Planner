require_relative 'graph'

class Calculator

  
  
end

def calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)

  total = starting_cash

  years.times {
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
  }

  total

end