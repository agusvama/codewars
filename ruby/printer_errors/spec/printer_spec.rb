require './printer.rb'

describe 'printer' do
  it 'returns count of characters > m' do
    expect(errors("abcxyz")).to eq(3)
  end

  it 'returns a string with errors/total_characters' do
    expect(printer_error("abcxyz")).to eq("3/6")
  end
end
