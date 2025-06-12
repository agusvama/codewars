require './xo.rb'

describe 'XO' do
  it 'counts a character in a string' do
    expect(character_counter("oxoxo", 'o')).to eq(3)
    expect(character_counter("oxoxo", 'x')).to eq(2)
    expect(character_counter("OxOxO", 'o')).to eq(3)
    expect(character_counter("oXoXo", 'x')).to eq(2)
    expect(character_counter("oXoXoO", 'o')).to eq(4)
    expect(character_counter("somebody please tell me", 'e')).to eq(5)
  end

  it 'compares quantity of Xs and Os in a string' do
    expect(XO("oxoxox")).to be true
    expect(XO("oxo")).to be false
    expect(XO("oxOX")).to be true
    expect(XO("ox")).to be true
    expect(XO("OX")).to be true
    expect(XO("agag")).to be true
  end
end
