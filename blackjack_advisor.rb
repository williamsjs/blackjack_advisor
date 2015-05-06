def valid_card?(card)
  if card.to_f == 0.0 || card.to_i <= 1
    false
  else
    true
  end
end

def get_user_cards
  user_cards = []
  total = 0
  puts "Please enter your first card: "
  first_card = gets.chomp
  if valid_card?(first_card) && first_card.upcase != 'A'
    total += first_card.to_i
    user_cards.push(first_card)
  elsif first_card.upcase == 'A'
    #fucntion to add it to hash
  else
    puts "You must enter valid numbers or 'A'"
  end
  puts "Please enter your second card: "
  second_card = gets.chomp
  if valid_card?(second_card) && second_card.upcase != 'A'
    total += second_card.to_i
    user_cards.push(second_card)
  elsif second_card.upcase == 'A'
    #function to add it to hash
  else
    puts "You must enter valid numbers or 'A'"
  end
  return user_cards, total
end

def get_dealer_card
  puts "Please enter the dealer's card: "
  dealer_card = gets.chomp
  if dealer_card.upcase == 'A'
    dealer_card.to_i
  elsif valid_card?(dealer_card)
    dealer_card.to_i
  else
    puts "You must enter valid numbers or 'A'"
  end
end

user_cards, total = get_user_cards
dealer_card = get_dealer_card

puts "total is #{total}"
puts "your cards are #{user_cards}"
puts "the dealer's card is #{dealer_card}"
