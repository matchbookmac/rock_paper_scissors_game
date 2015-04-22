require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the rock paper scissors game path', {:type => :feature}) do
  it('process the users\' entries and returns the result of the game') do
    visit('/')
    fill_in('player1', :with => 'rock')
    click_button('Send')
    expect(page).to have_content('Player 1 won!')
  end
end
