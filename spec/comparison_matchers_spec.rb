RSpec.describe 'comparison matchers' do
  it 'allows for comparison with our built-in Ruby operators' do
    expect(10).to be > 8
    expect(8).to be < 15

    expect(1).to be >= -1
    expect(1).to be >= 1

    expect(22).to be <= 100
    expect(22).to be <= 22
  end

  describe 100 do
    it { is_expected.to be > 99 }
  end
end