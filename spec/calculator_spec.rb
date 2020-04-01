require 'calculator'

describe Calculator do
  it 'should return an accurate figure for an investment' do
    expect(calculate(100, 1.1, 2, 0, 0)).to eq 2772
  end

  it 'should be able to initialize with amount to invest and then calculate' do
    calculator = Calculator.new(10_000)
    expect(calculator.calculate(2, 100)).to eq 14872
  end

  it 'should be able to return an array of the correct list of years' do
    calculator = Calculator.new(10_000)
    calculator.calculate(2, 100)
    expect(calculator.years_array).to eq [2020, 2021, 2022]
  end

  it 'should be able to return an array of total values each year' do
    calculator = Calculator.new(10_000)
    calculator.calculate(2, 100)
    expect(calculator.totals).to eq [10000, 12320, 14872]
  end

  it 'should allow the default interest rate to be 1.1' do
    calculator = Calculator.new(0)
    expect(calculator.calculate(2, 100)).to eq 2772
  end

  it 'should show all info on #show_info' do
    calculator = Calculator.new
    expect(calculator.show_info).to include(
      "Starting cash: " => 0,
      "Saving pm: " => 0,
      "Interest rate pa: " => 1.1,
      "Years: " => 30,
      "Saving increase pa: " => 0
    )
  end

  it 'should allow all factors to be updated' do
    calculator = Calculator.new
    calculator.starting_cash = 1234
    calculator.years = 50
    calculator.interest_rate_pa = 1.2
    calculator.saving_increase_pa = 100
    calculator.saving_pm = 200

    expect(calculator.show_info).to include(
      "Starting cash: " => 1234,
      "Saving pm: " => 200,
      "Interest rate pa: " => 1.2,
      "Years: " => 50,
      "Saving increase pa: " => 100
    )
  end
end