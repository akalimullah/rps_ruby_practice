class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]
    moves = ["rock","paper","scissors"]

    computer_move_index = rand(3)

    computer_move = moves[computer_move_index]

    user_move = params[:the_move]

    if (user_move == "rock" && computer_move == "scissors")
    || (user_move == "paper" && computer_move == "rock")
    || (user_move == "scissors" && computer_move == "paper")
      result = "won"
    elsif (user_move == computer_move)
      result = "tied"
    else
      result = "lost"
    end

    @computer_move = computer_move

    @result = result

    render("rps.html.erb")
  end
end
