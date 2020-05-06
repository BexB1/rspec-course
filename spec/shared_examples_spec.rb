RSpec.shared_examples 'a Ruby obj with 3 elements' do
  it 'returns a number of items' do
    expect(subject.length).to eq(3)
  end
end

RSpec.describe Array do
  subject { [1, 2, 3] }

  # === W.E.T!
  # it 'returns a number of items' do
  #   expect(subject.length).to eq(3)
  # end

  include_examples 'a Ruby obj with 3 elements'
end

RSpec.describe String do
  subject { 'abc' }

  include_examples 'a Ruby obj with 3 elements'

end

RSpec.describe Hash do
  subject { { a: 1, b: 2, c: 3 } }

  include_examples 'a Ruby obj with 3 elements'
end

class BunchOfCarrots
  def length
    3
  end
end

RSpec.describe BunchOfCarrots do
  subject { described_class.new }

  include_examples 'a Ruby obj with 3 elements'
end