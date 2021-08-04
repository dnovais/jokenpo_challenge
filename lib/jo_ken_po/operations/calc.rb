module JoKenPo
  module Operations
    class Calc
      def proccess(first_player_choice:, second_player_choice:)
        (first_player_choice - second_player_choice) % 3
      end
    end
  end
end