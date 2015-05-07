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

#assumes that ace is not included in array of cards
includes_ace = false

#checks to see if ace is included and sets includes_ace to true
if all_cards.include?('A')
  includes_ace = true
end

# sets up hash to include a hash
hash_answers = {hard: {5 => {2 => "hit",
                             3 => "hit",
                             4 => "hit",
                             5 => "hit",
                             6 => "hit",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       6 => {2 => "hit",
                             3 => "hit",
                             4 => "hit",
                             5 => "hit",
                             6 => "hit",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       7 => {2 => "hit",
                             3 => "hit",
                             4 => "hit",
                             5 => "hit",
                             6 => "hit",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       8 => {2 => "hit",
                             3 => "hit",
                             4 => "hit",
                             5 => "dh",
                             6 => "dh",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       9 => {2 => "dh",
                             3 => "dh",
                             4 => "dh",
                             5 => "dh",
                             6 => "dh",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       10 => {2 => "dh",
                             3 => "dh",
                             4 => "dh",
                             5 => "dh",
                             6 => "dh",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       11 => {2 => "dh",
                             3 => "dh",
                             4 => "dh",
                             5 => "dh",
                             6 => "dh",
                             7 => "dh",
                             8 => "dh",
                             9 => "dh",
                             10 => "dh",
                             11 => "dh"},
                       12 => {2 => "hit",
                             3 => "hit",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       13 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       14 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       15 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       16 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "hit",
                             8 => "hit",
                             9 => "hit",
                             10 => "hit",
                             11 => "hit"},
                       17 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "stand",
                             8 => "stand",
                             9 => "stand",
                             10 => "stand",
                             11 => "stand"},
                       18 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "stand",
                             8 => "stand",
                             9 => "stand",
                             10 => "stand",
                             11 => "stand"},
                       19 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "stand",
                             8 => "stand",
                             9 => "stand",
                             10 => "stand",
                             11 => "stand"},
                       20 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "stand",
                             8 => "stand",
                             9 => "stand",
                             10 => "stand",
                             11 => "stand"},
                       21 => {2 => "stand",
                             3 => "stand",
                             4 => "stand",
                             5 => "stand",
                             6 => "stand",
                             7 => "stand",
                             8 => "stand",
                             9 => "stand",
                             10 => "stand",
                             11 => "stand"}
                      },
                soft: false
                }


if includes_ace == true
  hash_answers[:hard].each do |key, value|

  end
end

if includes_ace == false
  hash_answers[:soft].each do |key, value|

  end
end

# hash_answers.each do |key, value|
#     if key == :soft
#       value.each do |key, value|
#         if key == 10
#           puts value
#         end
#       end
#     elsif key == :hard
#       value.each do |key, value|
#         if key == 17
#           puts value
#         end
#       end
#     end
# end
