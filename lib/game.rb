# frozen_string_literal: true

# Class Game
class Game
  STONE = 1
  PAPER = 2
  SCISSOR = 3

  def initialize(player_01_choice, player_02_choice)
    @player_01_choice = player_01_choice
    @player_02_choice = player_02_choice
  end

  def play
    start
  end

  private

  attr_reader :player_01_choice, :player_02_choice

  def start
    return 'Draw!' if game_calc == 0

    game_calc == 1 ? 'Player 01 win!' : 'Player 02 win!'
  end

  def game_calc
    (player_01_choice - player_02_choice) % 3
  end
end