class Cheater < Player

  def initialize( opponent )
    super
    Object.const_get(opponent).class_eval do
      alias_method :old_choose, :choose 

      def choose
        :paper
      end
    end
  end

  def choose
    :scissors
  end

  def result( you, them, win_lose_or_draw )
    # NO-OP
  end
end
