# Paper covers a Rock.      (Paper beats a Rock.)
# Scissors cut Paper.       (Scissors beat Paper.)
# A Rock smashes Scissors.  (A Rock beats Scissors.)
# Anything else is a "draw".
class RPS
  attr_writer :rand_seed

  def initialize(guess)
    @guess = guess.downcase
  end

  def computer_guess
    guesses = %w{rock paper scissors}
    guesses.sample
  end

  def winner_is
    if rule_engine[computer_guess.to_sym].include? @guess
      'Computer Wins!'
    elsif rule_engine[@guess.to_sym].include? computer_guess
      'You Win!'
    else
      'Draw!'
    end

  end

  def rule_engine
    {
      'rock': ['scissors'],
      'paper': ['rock'],
      'scissors': ['paper']
    }
  end
end

rps = RPS.new('paper')
puts rps.computer_guess
puts rps.winner_is
