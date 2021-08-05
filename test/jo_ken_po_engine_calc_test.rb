require 'test_helper'

STONE = 1
PAPER = 2
SCISSOR = 3

# GameTest class
class JoKenPo::Engine::CalcTest < Minitest::Test

  def setup
    @calc = JoKenPo::Engine::Calc.new
  end

  def test_when_player_01_choose_scissor_and_player_02_choose_paper
    result = @calc.proccess(first_player_choice: SCISSOR, second_player_choice: PAPER)

    assert_equal(result, 1)
  end

  def test_when_player_01_choose_paper_and_player_02_choose_stone
    result = @calc.proccess(first_player_choice: PAPER, second_player_choice: STONE)

    assert_equal(result, 1)
  end

  def test_when_player_01_choose_stone_and_player_02_choose_scissor
    result = @calc.proccess(first_player_choice: STONE, second_player_choice: SCISSOR)

    assert_equal(result, 1)
  end

  def test_when_player_02_choose_scissor_and_player_01_choose_paper
    result = @calc.proccess(first_player_choice: PAPER, second_player_choice: SCISSOR)

    assert_equal(result, 2)
  end

  def test_when_player_02_choose_paper_and_player_01_choose_stone
    result = @calc.proccess(first_player_choice: STONE, second_player_choice: PAPER)

    assert_equal(result, 2)
  end

  def test_when_player_02_choose_stone_and_player_01_choose_scissor
    result = @calc.proccess(first_player_choice: SCISSOR, second_player_choice: STONE)

    assert_equal(result, 2)
  end

  def test_when_all_players_chosse_scissor
    result = @calc.proccess(first_player_choice: SCISSOR, second_player_choice: SCISSOR)

    assert_equal(result, 0)
  end

  def test_when_all_players_chosse_paper
    result = @calc.proccess(first_player_choice: PAPER, second_player_choice: PAPER)

    assert_equal(result, 0)
  end

  def test_when_all_players_chosse_stone
    result = @calc.proccess(first_player_choice: STONE, second_player_choice: STONE)

    assert_equal(result, 0)
  end
end
