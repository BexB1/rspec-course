RSpec.describe 'not_to method' do
  
  it 'checks that two values do not match' do
    expect('hello').not_to eq('Hello')
  end
end