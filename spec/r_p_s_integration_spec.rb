require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the rock paper scissors game path', {:type => :feature}) do
  it('process the users\' entries and returns the result of the game') do
    visit('/')
    fill_in('player1', :with => 'rock')
    fill_in('player2', :with => 'scissors')
    click_button('Send')
    expect(page).to have_content('Player 1 Wins!')
  end
end
