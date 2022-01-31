require './question'
require './player'

class Main

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    
  end

  def play(player)
    question = Question.new(player.name)
    question.random_question

    if (!question.validate_answer)
      player.lives -= 1
    end

    question.display

  end

  def displayScore
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    puts
  end 

    
  def start
    while @player1.lives > 0 && @player2.lives > 0
      play(@player1)
      displayScore

      if @player1.lives > 0
        puts '----- NEW TURN ------'

        play(@player2)
        displayScore
        puts '----- NEW TURN ------'

      end
    end 

    puts "#{@player1.lives< 1 ? @player2.name: @player1.name} wins with a score #{@player1.lives< 1 ? @player2.lives : @player1.lives}/3"
    puts '----- GAME OVER -----'
    puts 'Good bye!'

  end 

end

play = Main.new
play.start

