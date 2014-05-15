require './lib/three_and_five'
require 'rspec'

describe 'ThreeAndFive ' do
    let(:threeandfive)  {ThreeAndFive.new}

  it 'should return 3 when given 3' do
    expect(threeandfive.times_three(3)).to eq(3)
  end
  it 'should return 9 when given 9' do
    expect(threeandfive.times_three(9)).to eq(9)
  end
  it 'should return nil when give 8' do
    expect(threeandfive.times_three(8)).to eq(nil)
  end
  it 'should return 5 when given 5' do
    expect(threeandfive.times_five(5)).to eq(5)
  end
  it 'should return 15 when given 15' do
    expect(threeandfive.times_five(15)).to eq(15)
  end
  it 'should return multiples of threeandfive when passed a range' do
    expect(threeandfive.filter_numbers(18)).to eq(18)
  end
  it 'should not return any other number' do
    expect(threeandfive.filter_numbers(17)).to eq nil
  end
  it 'should return multiples of 3 and five between 1 and 1000' do
    expect(threeandfive.range).to include(3,5,6,9,10)
  end 
  it 'should be able to add the total of all filtered numbers' do
    expect(threeandfive.total).to eq([234168])
  end

end