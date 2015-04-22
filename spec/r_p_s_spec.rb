require('rspec')
require('r_p_s')

describe('String#beats?') do
  it("will return true when rock beats scissors") do
    expect('rock'.beats?('scissors')).to(eq(true))
  end
  it("will return false when rock loses to paper") do
    expect('rock'.beats?('paper')).to(eq(false))
  end
end
