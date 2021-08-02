# frozen_string_literal: true

class Game
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
  end


end