
def randomPlay 
     randomNumber = Random.rand()
    if (randomNumber < 0.33) 
        return "rock"
   elsif (randomNumber < 0.66) 
        return "paper"
   else 
        return "scissors"
    end
end

def getWinner(playerMove,computerMove)
    if playerMove ==computerMove
        winner='tie';
    
    else
        case playerMove
        when 'rock'
            if computerMove=='paper'
                winner = 'computer'
            elsif computerMove=='scissors'
            winner='player'
            end
        when 'paper'
            if computerMove=='rock'
                winner='player'
            elsif computerMove=='scissors'
                winner='computer'
            end

        when 'scissors'
            if computerMove=='rock'
                winner='computer'
            elsif computerMove=='paper'
                winner='player'
            end
        end
    end
    return winner;
end


