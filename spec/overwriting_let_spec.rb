class ProgrammingLanguage
  attr_reader :name

  def initialize(name ='Ruby')
    @name = name
  end

  RSpec.describe ProgrammingLanguage do
    let(:language) { ProgrammingLanguage.new('Python') }

    it 'should store the name of the language' do
      expect(language.name).to eq('Python')
    end

    context 'with no argument' do
      # Use shadowing, basically!! 'Dogs can look up' - variables defined in parent scope are available in inner scopes.
      let(:language) { ProgrammingLanguage.new() }

      it 'should default to Ruby as the name' do
        expect(language.name).to eq('Ruby')
      end
    end
  end
end