class PagesController < ApplicationController

  Options = ["rock", "paper", "scissors"]
  Outcomes = {"rock"=> {"rock"=> "tie", "paper"=> "win", "scissors"=> "lose"},
            "paper"=> {"rock"=> "lose", "paper"=> "tie", "scissors"=> "win"},
            "scissors"=> {"rock"=> "win", "paper"=> "lose", "scissors"=> "tie"}}

  def home
    render({:template => "pages_templates/home"})
  end

  def process_opponent_and_outcome(our_choice)
    opponent = Options.sample
    outcome = Outcomes[opponent][our_choice]
    return opponent, outcome
  end

  def rock
    @our_choice = "rock"
    @opponent_choice, @outcome = process_opponent_and_outcome(@our_choice)
    render({:template => "pages_templates/outcome"})
  end

  def paper
    @our_choice = "paper"
    @opponent_choice, @outcome = process_opponent_and_outcome(@our_choice)
    render({:template => "pages_templates/outcome"})
  end

  def scissors
    @our_choice = "scissors"
    @opponent_choice, @outcome = process_opponent_and_outcome(@our_choice)
    puts @our_choice, @opponent_choice
    render({:template => "pages_templates/outcome"})
  end
end
