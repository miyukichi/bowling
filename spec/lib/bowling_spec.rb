require "bowling"

describe "ボウリングスコア計算" do
  describe "全体の計算" do
    context "全ての投球がガターだった場合" do
      it "0になること" do
        @game = Bowling.new
        
        20.times do
            @game.add_score(0)
        end
        
        expect(@game.total_score).to eq  0
      end
    end
        
    context "全ての投球で1ピンずつ倒した場合" do
      it "20になること" do
          @game = Bowling.new
          
          20.times do
              @game.add_score(1)
          end
      
          expect(@game.total_score).to eq 20
      end
    end
  
    context "始めの10回の投球で０ピンずつ、残りの10回で1ピンずつ倒した場合" do
      it "10になること" do
          @game = Bowling.new
          
          10.times do
              @game.add_score(0)
          end
          
          10.times do
              @game.add_score(1)
          end
      
          expect(@game.total_score).to eq 10
      end
    end
  end
end
