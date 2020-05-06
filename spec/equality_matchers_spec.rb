# eq() checks equality of values (JS: '==')
# eql() checks for value and type (JS: '===')
# equal() checks for identity, interchangeable with 'be()'


RSpec.describe 'equality matchers' do
  let(:a) { 3.0 }
  let(:b) { 3 }

  describe 'eq matcher' do
    it 'tests for a value and ignores type' do
      expect(a).to eq(b)
    end
  end

  describe 'eql matcher' do
    it 'tests for a value and ignores type' do
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    # 'Equality' means having the same value - looking/feeling the same. Equal but not identical.
    # 'Indentity' means the same thing, obj in memory

    it 'cares about object identity' do
      expect(c).to eql(d)
      expect(c).not_to be(d)
      expect(e).to equal(c)
      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end