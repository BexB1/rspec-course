RSpec.describe Array do

  it 'should be an empty Array data type' do
    expect(subject).to eq([])
    p subject
  end

  it 'should accept a new value' do
    expect(subject.length).to eq(0)
    subject.push('Apples')
    expect(subject.length).to eq(1)
  end

end