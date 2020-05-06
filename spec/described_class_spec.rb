# class Queen
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end
# end

# RSpec.describe Queen do
#   subject { Queen.new('Katarina') }
#   let (:elizabeth) { Queen.new('Elizabeth') }
# end

# Shit, the class name needs to change...

class Royal
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

RSpec.describe Royal do
  subject { described_class.new('Katarina') }
  let (:elizabeth) { described_class.new('Elizabeth') }

  it 'represents a great person' do
    expect(subject.name).to eq('Katarina')
    expect(elizabeth.name).to eq('Elizabeth')
  end
end