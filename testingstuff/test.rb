require 'gruff'

saving_pm = 500
interest_rate_pa = 1.5
years = 30
starting_cash = 10_000
saving_increase = 0

@total = [starting_cash]
@year = []
@total2 = [starting_cash]
@total3 =[starting_cash]
@total4 = [starting_cash]

def calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
  i = 2020
  total = starting_cash
  years.times {
    i += 1 
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
    @total << total
    @year << i
  }
  total
end

def calculate2(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
  i = 2020
  total = starting_cash
  years.times {
    i += 1 
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
    @total2 << total
    @year << i
  }
  total
end

def calculate3(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
  i = 2020
  total = starting_cash
  years.times {
    i += 1 
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
    @total3 << total
    @year << i
  }
  total
end

def calculate4(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
  i = 2020
  total = starting_cash
  years.times {
    i += 1 
    total += saving_pm * 12
    total = total*interest_rate_pa
    saving_pm = saving_pm + saving_increase
    @total4 << total
    @year << i
  }
  total
end

calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)
calculate2(saving_pm, 1, years, starting_cash, saving_increase)
#calculate3(saving_pm, 1.05, years, starting_cash, saving_increase)
#calculate4(saving_pm, 1.1, years, starting_cash, saving_increase)

g = Gruff::Line.new
g.title = "A Line Graph"
g.data @year, @total
g.data "exponential", @total2
g.data "exponential", @total3
g.data "exponential", @total4

#g.data 'Hamburgers', [50, 19, 99, 29]
g.write("./line.png")
