require 'test_helper'

# GameTest class
class JoKenPo::Engine::ResultTest < Minitest::Test
  def setup
    @result = JoKenPo::Engine::Result.new
  end

  def test_when_player_01_is_winner
    game_result = @result.who_is_winner?(result: 1)

    assert_equal(game_result, 'Player 01 win!')
  end

  def test_when_player_02_is_winner
    game_result = @result.who_is_winner?(result: 2)

    assert_equal(game_result, 'Player 02 win!')
  end

  def test_when_result_is_draw
    game_result = @result.who_is_winner?(result: 0)

    assert_equal(game_result, 'Draw!')
  end
end
