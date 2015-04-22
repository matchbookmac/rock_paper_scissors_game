class String
  define_method(:beats?) do |play|
    player1 = self
    player2 = play
    if(player1.eql?('rock'))
      if(player2.eql?('scissors'))
        true
      elsif(player2.eql?('paper'))
        false
      end
    elsif(player1.eql?('scissors'))
      if(player2.eql?('paper'))
        true
      elsif(player2.eql?('rock'))
        false
      end
    elsif(player1.eql?('paper'))
      if(player2.eql?('rock'))
        true
      elsif(player2.eql?('scissors'))
        false
      end
    end
  end
end
