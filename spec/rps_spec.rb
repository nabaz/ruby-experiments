require 'rspec'
require 'rps'

describe RPS do
  it 'paper beats rock' do
    rps = RPS.new(guess: 'rock')
    rps.rand_seed = 1
    expect(rps.winner_is).to eq('Computer Wins!')
  end
end
