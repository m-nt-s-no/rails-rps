class PagesController < ApplicationController

  Options = ["rock", "paper", "scissors"]
  Outcomes = {"rock"=> {"rock"=> "tied", "paper"=> "won", "scissors"=> "lost"},
            "paper"=> {"rock"=> "lost", "paper"=> "tied", "scissors"=> "won"},
            "scissors"=> {"rock"=> "won", "paper"=> "lost", "scissors"=> "tied"}}

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
    render({:template => "pages_templates/outcome"})
  end
end
