# soft_or_hard = { hard: {hit:  , stand:  , split:  , double_if_possible:  , double_if_possible_ows:  },
#                  soft: { },
#                  pair: { }
#                }





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
  total = 0
  if valid_card?(first_card) && first_card.upcase != 'A'
    user_cards.push(first_card)
    total += first_card.to_i
  elsif first_card.upcase == 'A'
    #function to add it to hash
  else
    puts "You must enter valid numbers or 'A'"
  end
  if valid_card?(second_card) && second_card.upcase != 'A'
    user_cards.push(second_card)
    total += second_card.to_i
  elsif second_card.upcase == 'A'
    #function to add it to hash
  else
    puts "You must enter valid numbers or 'A'"
  end
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

dealer_card = get_dealer_card
user_card_total = get_user_cards


puts "The dealer's card is #{dealer_card} and your card total is #{user_card_total}"
