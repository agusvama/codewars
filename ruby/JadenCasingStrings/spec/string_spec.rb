require "./string"

describe String do
  it "capitalizes a word" do
    expect("hello".capitalize).to eq("Hello")
  end

  it "goes from sentence to list of words" do
    expect("you're a liar".split).to eq(["you're", "a", "liar"])
  end

  it "goes from list of words to sentence" do
    expect(["happy", "to", "have", "you", "here"].join(' ')).to eq("happy to have you here")
  end

  it "capitalizes each word from a sentence" do
    expect("let's see what happens".toJadenCase).to eq("Let's See What Happens")
  end

  it "capitalizes each word from a sentence" do
    expect("How can mirrors be real if our eyes aren't real".toJadenCase).to eq("How Can Mirrors Be Real If Our Eyes Aren't Real")
  end
end
