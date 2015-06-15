class RandomPlayer < Player
  QUEUE = [ :rock,
    :scissors,
    :scissors ]

  def initialize( opponent )
    super
  end

  def choose
    QUEUE.sample
  end
end
