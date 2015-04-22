require('rspec')
require('r_p_s')

describe('String#beats?') do
  #rock tests
  it("will return true when rock beats scissors") do
    expect('rock'.beats?('scissors')).to(eq(true))
  end
  it("will return false when rock loses to paper") do
    expect('rock'.beats?('paper')).to(eq(false))
  end
  #scissors tests
  it("will return true when scissors beats paper") do
    expect('scissors'.beats?('paper')).to(eq(true))
  end
  it("will return false when scissors loses to rock") do
    expect('scissors'.beats?('rock')).to(eq(false))
  end
  #paper tests
  it("will return true when paper beats rock") do
    expect('paper'.beats?('rock')).to(eq(true))
  end
  it("will return false when paper loses to scissors") do
    expect('paper'.beats?('scissors')).to(eq(false))
  end
  #tie test
  it("will return tie when player 1 and player 2 play the same move") do
    expect('rock'.beats?('rock')).to(eq('tie'))
  end
  it("will return tie when player 1 and player 2 play the same move") do
    expect('scissors'.beats?('scissors')).to(eq('tie'))
  end
  it("will return tie when player 1 and player 2 play the same move") do
    expect('paper'.beats?('paper')).to(eq('tie'))
  end
end
