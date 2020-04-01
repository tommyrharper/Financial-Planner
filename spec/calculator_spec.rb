require 'calculator'

describe Calculator do
  it 'should return an accurate figure for an investment' do
    expect(calculate(100, 1.1, 2, 0, 0)).to eq 2772
  end

  it 'should be able to initialize with amount to invest and then calculate' do
    calculator = Calculator.new(10_000)
    expect(calculator.calculate(100, 1.1, 2)).to eq 14872
  end

  it 'should be able to return an array of the correct list of years' do
    calculator = Calculator.new(10_000)
    calculator.calculate(100, 1.1, 2)
    expect(calculator.years).to eq [2020, 2021, 2022]
  end

  it 'should be able to return an array of total values each year' do
    calculator = Calculator.new(10_000)
    calculator.calculate(100, 1.1, 2)
    expect(calculator.totals).to eq [10000, 12320, 14872]
  end
end