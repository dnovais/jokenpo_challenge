require 'test_helper'

# GameTest class
class JoKenPo::GameTest < Minitest::Test
  STONE = 1
  PAPER = 2
  SCISSOR = 3

  def test_when_player_01_choose_scissor_and_player_02_choose_paper
    game = JoKenPo::Game.new(SCISSOR, PAPER)

    match = game.play

    assert_equal(match, 'Player 01 win!')
  end

  def test_when_player_01_choose_paper_and_player_02_choose_stone
    game = JoKenPo::Game.new(PAPER, STONE)

    match = game.play

    assert_equal(match, 'Player 01 win!')
  end

  def test_when_player_01_choose_stone_and_player_02_choose_scissor
    game = JoKenPo::Game.new(STONE, SCISSOR)

    match = game.play

    assert_equal(match, 'Player 01 win!')
  end

  def test_when_player_02_choose_scissor_and_player_01_choose_paper
    game = JoKenPo::Game.new(PAPER, SCISSOR)

    match = game.play

    assert_equal(match, 'Player 02 win!')
  end

  def test_when_player_02_choose_paper_and_player_01_choose_stone
    game = JoKenPo::Game.new(STONE, PAPER)

    match = game.play

    assert_equal(match, 'Player 02 win!')
  end

  def test_when_player_02_choose_stone_and_player_01_choose_scissor
    game = JoKenPo::Game.new(SCISSOR, STONE)

    match = game.play

    assert_equal(match, 'Player 02 win!')
  end

  def test_when_all_players_chosse_scissor
    game = JoKenPo::Game.new(SCISSOR, SCISSOR)

    match = game.play

    assert_equal(match, 'Draw!')
  end

  def test_when_all_players_chosse_paper
    game = JoKenPo::Game.new(PAPER, PAPER)

    match = game.play

    assert_equal(match, 'Draw!')
  end

  def test_when_all_players_chosse_stone
    game = JoKenPo::Game.new(STONE, STONE)

    match = game.play

    assert_equal(match, 'Draw!')
  end
end
