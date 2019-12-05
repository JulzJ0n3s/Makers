require "Scribble"

describe Scribble do
  it 'returns 0 for empty space' do
    scrabble = Scribble.new
    given_result = scrabble.score(" ")
    expect(given_result).to eq 0
  end
  it 'returns 0 for TAB and ENTER' do
    scrabble = Scribble.new
    given_result = scrabble.score(" \t\n")
    expect(given_result).to eq 0
  end
  it 'returns 0 for nil' do
    scrabble = Scribble.new
    given_result = scrabble.score(nil)
    expect(given_result).to eq 0
  end
  it 'returns 1 for a' do
    scrabble = Scribble.new
    given_result = scrabble.score("a")
    expect(given_result).to eq 1
  end
  it 'returns 4 for f' do
    scrabble = Scribble.new
    given_result = scrabble.score("f")
    expect(given_result).to eq 4
  end
  it 'returns 6 for "street"' do
    scrabble = Scribble.new
    given_result = scrabble.score("street")
    expect(given_result).to eq 6
  end
  it 'returns 22 for "quirky"' do
    scrabble = Scribble.new
    given_result = scrabble.score("quirky")
    expect(given_result).to eq 22
  end
  it 'return 41 for "OXYPHENBUTAZONE"' do
    scrabble = Scribble.new
    given_result = scrabble.score("OXYPHENBUTAZONE")
    expect(given_result).to eq 41
  end
end
