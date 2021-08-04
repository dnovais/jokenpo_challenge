# frozen_string_literal: true

# Class Game
module JoKenPo
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

    attr_reader :player_01_choice, :player_02_choice, :result

    def start
      result = JoKenPo::Operations::Calc.new.proccess(first_player_choice: player_01_choice, second_player_choice: player_02_choice)

      return 'Draw!' if result == 0

      result == 1 ? 'Player 01 win!' : 'Player 02 win!'
    end
  end
end