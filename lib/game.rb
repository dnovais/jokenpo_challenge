# frozen_string_literal: true

class Game
  STONE = 1
  PAPER = 2
  SCISSOR = 3

  def initialize(player_01, player_02)
    @player_01 = player_01
    @player_02 = player_02
  end

  def play
    start
  end

  private

  attr_reader :player_01, :player_02

  def start
    return 'Draw!' if game_calc == 0

    game_calc == 1 ? 'Player 01 win!' : 'Player 02 win!'
  end

  def game_calc
    (player_01 - player_02) % 3
  end
end