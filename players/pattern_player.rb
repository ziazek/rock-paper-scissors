class PatternPlayer < Player

  def initialize( opponent )
    super
    @opponent_stats =  {
      rock: 0,
      paper: 0,
      scissors: 0
    }
  end

  def choose
    most_common = @opponent_stats.sort_by { |k,v| v }.reverse
    return find_object_that_beats(most_common[0][0])
  end

  def result( you, them, win_lose_or_draw )
    # print you, them, win_lose_or_draw
    @opponent_stats[them] += 1
  end

  private

  def find_object_that_beats(object)
    # puts object
    case object
    when :rock then return :paper
    when :paper then return :scissors
    when :scissors then return :rock
    end
  end
end
