require('rspec')
require('r_p_s')

describe('String#beats?') do
  it("will return true when rock beats scissors") do
    expect('rock'.beats?('scissors')).to(eq(true))
  end
end
