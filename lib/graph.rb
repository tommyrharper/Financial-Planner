require 'gruff'

saving_pm = 1000
interest_rate_pa = 1
years = 30
starting_cash = 10_000
saving_increase = 0

@total = [starting_cash]
@year = []

=begin
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



calculate(saving_pm, interest_rate_pa, years, starting_cash, saving_increase)

g = Gruff::Line.new
g.title = "A Line Graph"
g.data @year, @total

g.write("./line.png")
=end
