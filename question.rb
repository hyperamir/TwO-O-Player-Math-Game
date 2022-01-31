class Question
 
  def initialize(player)
    @player = player
  end

  def random_question
    @first_num = rand(1..20)
    @second_num = rand(1..20)

    puts "#{@player}: What does #{@first_num} plus #{@second_num} equal?"
    @answer = gets.chomp.to_i
  end
  
  def validate_answer
    @first_num + @second_num == @answer
  end
  
  def display
    if validate_answer
      puts "#{@player}: YES!, You are correct."
    else
      puts "#{@player}: Seriously? No!"
    end 
  end

end
