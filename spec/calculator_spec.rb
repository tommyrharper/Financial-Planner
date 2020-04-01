require 'calculator'

describe Calculator do
  it 'should return an accurate figure for an investment' do
    expect(calculate(100, 1.1, 2, 0, 0)).to eq 2772
  end

  it 'should be able to initialize with starting year and amount to invest and then calculate' do
    calculator = Calculator.new(10_000, 2020)
    expect(calculator.calculate(100, 1.1, 2)).to eq 14872
  end
end