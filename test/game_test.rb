require 'test_helper'

SCISSOR = 1
PAPER = 2
STONE = 3

describe Game do
  describe "#play" do
    describe "when player 01 win" do
      describe "when player 01 choose scissor and player 02 choose paper" do
        it "should return player 01 win" do
          player_01_choice = SCISSOR
          player_02_choice = PAPER

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 01 win!'
        end
      end

      describe "when player 01 choose paper and player 02 choose stone" do
        it "should return player 01 win" do
          player_01_choice = PAPER
          player_02_choice = STONE

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 01 win!'
        end
      end

      describe "when player 01 stone paper and player 02 choose scissor" do
        it "should return player 01 win" do
          player_01_choice = STONE
          player_02_choice = SCISSOR

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 01 win!'
        end
      end
    end

    describe "when player 02 win" do
      describe "when player 02 choose scissor and player 02 choose paper" do
        it "should return player 02 win" do
          player_01_choice = PAPER
          player_02_choice = SCISSOR

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 02 win!'
        end
      end

      describe "when player 02 choose paper and player 02 choose stone" do
        it "should return player 02 win" do
          player_01_choice = STONE
          player_02_choice = PAPER

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 02 win!'
        end
      end

      describe "when player 02 stone paper and player 02 choose scissor" do
        it "should return player 02 win" do
          player_01_choice = SCISSOR
          player_02_choice = STONE

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play

          expect(match).must_equal 'Player 02 win!'
        end
      end
    end

    describe "when players is draw" do
      describe "when player 01 and player 02 chooses scissors" do
        it "should return draw" do
          player_01_choice = SCISSOR
          player_02_choice = SCISSOR

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play
          
          _(match).must_equal 'Draw!'
        end
      end

      describe "when player 01 and player 02 chooses paper" do
        it "should return draw" do
          player_01_choice = PAPER
          player_02_choice = PAPER

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play
          
          _(match).must_equal 'Draw!'
        end
      end

      describe "when player 01 and player 02 chooses stone" do
        it "should return draw" do
          player_01_choice = STONE
          player_02_choice = STONE

          game = Game.new(player_01_choice, player_02_choice)

          match = game.play
          
          _(match).must_equal 'Draw!'
        end
      end
    end
  end
end