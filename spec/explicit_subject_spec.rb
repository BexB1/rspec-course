RSpec.describe Hash do
  subject(:bob) do
    { a: 1, b: 2 }
  end

  # Pro of this over let methods is being able to use RSpec helper shortcuts.

  it 'has two key-value pairs' do
    expect(subject.length).to eq(2)
    expect(bob.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(bob.length).to eq(2)
    end
  end
end