class RandomPlayer < Player
  QUEUE = [ :rock,
    :scissors,
    :paper ]

  def initialize( opponent )
    super
  end

  def choose
    QUEUE.sample
  end
end
