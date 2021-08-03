# frozen_string_literal: true

class Game
  SCISSOR = 1
  PAPER = 2
  STONE = 3

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
    return 'Draw!' if player_01 == player_02

    if player_01 == SCISSOR && player_02 == PAPER
      'Player 01 win!'
    elsif player_01 == PAPER && player_02 == STONE
      'Player 01 win!'
    elsif player_01 == STONE && player_02 == SCISSOR
      'Player 01 win!'
    elsif player_02 == SCISSOR && player_01 == PAPER
      'Player 02 win!'
    elsif player_02 == PAPER && player_01 == STONE
      'Player 02 win!'
    elsif player_02 == STONE && player_01 == SCISSOR
      'Player 02 win!'
    end
  end


end