RSpec.describe Array do
  subject(:sally) do
    [ 42, 'Doctor' ]
  end

  it 'should be updated with .pop method, and return 1' do
    expect(sally.length).to eq(2)
    sally.pop()
    expect(sally.length).to eq(1)
  end

  it 'should be equal to the original array' do
    expect(sally).to eq([ 42, 'Doctor' ])
  end
end