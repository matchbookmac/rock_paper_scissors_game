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
    else
      false
    end
  end
end
