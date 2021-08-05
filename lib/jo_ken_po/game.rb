# frozen_string_literal: true

module JoKenPo
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
      result
    end

    private
      attr_reader :player_01_choice, :player_02_choice

      def result
        game_calc_result = game_calc
        JoKenPo::Engine::Result.new.who_is_winner?(result: game_calc_result)
      end

      def game_calc
        JoKenPo::Engine::Calc.new.proccess(
          first_player_choice: player_01_choice, 
          second_player_choice: player_02_choice
        )
      end
  end
end