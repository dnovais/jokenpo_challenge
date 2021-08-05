module JoKenPo
  module Engine
    # Class Result
    class Result
      def who_is_winner?(result:)
        return 'Draw!' if result == 0

        result == 1 ? 'Player 01 win!' : 'Player 02 win!'
      end
    end
  end
end