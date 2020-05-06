# Write an RSpec test for an array with 2 elements.
# Declare the subject to be [1, 2].
# Write an example that uses expect(subject) to test whether the array is equal to [1, 2].
# Write an example that uses the one-liner is_expected syntax.
# Which do you prefer?

RSpec.describe Array do
  subject(:arr) do
    [1, 2]
  end

  it 'should equal [1, 2]' do
    expect(arr).to eq([1, 2])
  end

  it { is_expected.to eq([1, 2]) }
end