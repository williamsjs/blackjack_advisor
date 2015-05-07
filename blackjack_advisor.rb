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
    user_cards.push(first_card.to_i)
  elsif first_card.upcase == 'A'
    user_cards.push('A')
  else
    puts "You must enter valid numbers or 'A'"
  end
  puts "Please enter your second card: "
  second_card = gets.chomp
  if valid_card?(second_card) && second_card.upcase != 'A'
    total += second_card.to_i
    user_cards.push(second_card.to_i)
  elsif second_card.upcase == 'A'
    user_cards.push('A')
  else
    puts "You must enter valid numbers or 'A'"
  end
  return user_cards, total
end

def get_dealer_card
  puts "Please enter the dealer's card: "
  dealer_card = gets.chomp
  if dealer_card.upcase == 'A'
    dealer_card.upcase
  elsif valid_card?(dealer_card)
    dealer_card.to_i
  else
    puts "You must enter valid numbers or 'A'"
  end
end

user_cards, total = get_user_cards
dealer_card = get_dealer_card
all_cards = [dealer_card, user_cards].flatten

# def is_hard_hand?(all_cards)

puts "total is #{total}"
puts "your cards are #{user_cards}"
puts "the dealer's card is #{dealer_card}"
puts "All of the cards are #{all_cards}"

if all_cards.include?('A')
   hash_answer
end


def hit
  puts "You should hit"
end

def stand
  puts "You should stand"
end

def split
  puts "You should split"
end

def double_otherwise_hit
  puts "You should double, otherwise you should hit"
end

def double_otherwise_stand
  puts "You should double, otherwise you should stand"
end

hash_answers = {hard: {5 => {2 => hit},
                       3 => {5 => split},
                       8 => {2 => stand},
                       17 => {8 => double_otherwise_hit},
                       10 => {9 => double_otherwise_stand}
                      },
                soft: {}
                }


hash_answers.each do |key, value|
  if key == :hard
    puts "Value is #{value}"
  end
end
