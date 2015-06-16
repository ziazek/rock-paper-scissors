class BiasInverter < Player

  def initialize( opponent )
    super
    @opponent_stats =  {
      rock: 0,
      paper: 0,
      scissors: 0
    }
  end

  def choose
    dice = rand(total(:rock, :paper, :scissors)).to_i + 1 # rand excludes the max
    case dice
    when 0..@opponent_stats[:rock] # opponent puts out more rock
      :paper 
    when @opponent_stats[:rock]..total(:rock, :paper) # opponent puts out more paper
      :scissors
    when total(:rock, :paper)..total(:rock, :paper, :scissors)
      :rock
    else
      :paper
    end
  end

  def result( you, them, win_lose_or_draw )
    # print you, them, win_lose_or_draw
    @opponent_stats[them] += 1
  end

  private

  def total(*objects)
    objects.inject(0) { |total, elem| total + @opponent_stats[elem] }
  end
end
