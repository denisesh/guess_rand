
  def random_number
    @winner = rand(100) + 1
  end

  def user_guesses
    num_of_guesses = 0
    puts "Guess a number between 1 and 100"
    @guess = gets.chomp.to_i

    while @winner != @guess
      check_guess
      # p @winner
      # p @guess
      num_of_guesses += 1
    end
    puts "You guessed it in #{num_of_guesses} tries! Congrats"
  end

  def check_guess
      if @guess < @winner
        puts "The number is higher than #{@guess}. Guess Again"
      else
        puts "The number is lower than #{@guess}. Guess Again"
      end
      @guess = gets.chomp.to_i
  end

random_number
user_guesses
