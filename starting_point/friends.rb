def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return person[:favourites][:snacks].include?(food)
end

def add_friend(person, new_friend)
  person[:friends]<< new_friend
end

def remove_friend(person, friend_name)
  person[:friends].delete(friend_name)
end

def total_of_everybody_money()
  total = 0
  @people.each{|person| total += person[:monies]}
  return total
end

def money_loan(lender, lendee, loan)
  lender[:monies] -=loan
  lendee[:monies] +=loan
end

def favourite_food()
  food = []
  @people.each{|person| food << person[:favourites][:snacks]}
  return food.flatten!
end

# def favourite_food(people)
#   food= []
#   for person in psople
#     for snack in person[:favourites][:snacks]
#       food << snack
#     end
#   end
#   return result
# end

# def favourite_food(people)
#   food= []
#   for person in psople
#     result.concat(person[:favourites][:snacks])
#   end
#   return result
# end



def find_friend_with_no_friends()
  no_friend = []
  for friend in @people
    if friend[:friends].empty?
    no_friend.push(person)
    end
  end
  return no_friend
end
