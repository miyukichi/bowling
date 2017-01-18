class Bowling
  def initialize
    @total_score = 0
    
    @scores = []
    
    @frame_pins = []
  end
  
  def add_score(pins)
   @frame_pins << pins
   
    if @frame_pins.size == 2
      @scores << @frame_pins
      @frame_pins = []
    end
  end
  
  def total_score
    @total_score
  end
  
  def calc_score
    @scores.each.with_index do |score, i|
      if score.inject(:+) == 10 && i < 9
        @total_score += 10 + @scores[i + 1].first
      else
        @total_score += score.inject(:+)
      end
    end
  end
end