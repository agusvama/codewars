require "./string"

describe String do
  it "capitalizes each word of a sentence" do
    str = "hello world here goes nirvana"
    expect(str.toJadenCase).to eq("Hello World Here Goes Nirvana")
  end
end
