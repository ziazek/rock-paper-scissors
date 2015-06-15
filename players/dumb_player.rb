#!/usr/bin/env ruby

class DumbPlayer < Player
  def initialize( opponent )
    # optional
    #
    # called at the start of a match verses opponent
    # opponent = String of opponent's class name
    #
    # Player's constructor sets @opponent
    super
  end

  def choose
    # required
    #
    # return your choice of :paper, :rock or :scissors
    :paper
  end

  def result( you, them, win_lose_or_draw )
    # optional
    #
    # called after each choice you make to give feedback
    # you              = your choice
    # them             = opponent's choice
    # win_lose_or_draw = :win, :lose or :draw, your result
    # puts you, them, win_lose_or_draw
  end
end