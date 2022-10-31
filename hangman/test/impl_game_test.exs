defmodule HangmanImplGameTest do
  use ExUnit.Case
  alias Hangman.Impl.Game

  test "new game returns structure" do
    game = Game.new_game()
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
  end

  test "new game return correct word" do
    game = Game.new_game("aligator")
    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert game.letters == ["a", "l", "i", "g", "a", "t", "o", "r"]
  end

  test "each letter is lowercase ascii character" do
    game = Game.new_game()
    assert Enum.all?(game.letters, fn x -> x >= "a" && x <= "z" end)
  end
end
