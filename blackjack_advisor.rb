def valid_card?(card)
  if card.to_f == 0.0 || card.to_i <= 1
    false
  else
    true
  end
end


def get_user_cards
  user_cards = []
  puts "Please enter your first card: "
  first_card = gets.chomp
  puts "Please enter your second card: "
  second_card = gets.chomp
  if valid_card?(first_card) && valid_card?(second_card)
    total = first_card.to_i + second_card.to_i
    user_cards.push(total)
  else
    puts "You must enter valid numbers or 'A'"
  end
end

def get_dealer_card
  puts "Please enter the dealer's card: "
  dealer_card = gets.chomp.to_i
  if valid_card?(dealer_card)
    dealer_card
  else
    puts "You must enter valid numbers or 'A'"
  end
end

puts get_user_cards
