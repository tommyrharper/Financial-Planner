require 'calculator'

describe Calculator do
  it 'should return an accurate figure for an investment' do
    expect(calculate(100, 1.1, 2, 0, 0)).to eq 2772
  end
end