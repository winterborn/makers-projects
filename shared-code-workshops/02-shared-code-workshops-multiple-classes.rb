# User manager
# - Store users (add users) DONE
# - Report a list of the users DONE
# - Refuse to add users who are under 18 DONE
# - Usernames must not have spaces in them
#   but they can have underscores DONE
# - by the time they signed up ascending  DONE

# UserManager
#  - add # Username and age
#    # Refuse to add users under 18
#  - list # Just list by username, not age,
#           in order of time added

class User
  def initialize(username, age, date_signed_up)
    @username = username
    @age = age
    @date_signed_up = date_signed_up
  end

  def age
    return @age
  end

  def username
    return @username
  end

  def date_signed_up
    return @date_signed_up
  end
end

class UserManager
  def initialize
    @users = []
  end

  def add(user)
    fail "This user is under the age of 18." if user.age < 18
    fail "Usernames can't have spaces." if user.username.include?(" ")
    @users << user
  end

  def list
    sorted_users = @users.sort_by { |user| user.date_signed_up }

    usernames = sorted_users.map { |user| user.username }

    return usernames.join("; ")
  end
end

user_manager = UserManager.new
user_1 = User.new("kay", 32, Time.new(2022, 8, 5))
user_manager.add(user_1)
user_2 = User.new("eddie", 31, Time.new(2022, 8, 4))
user_manager.add(user_2)
p user_manager.list
# => "eddie; kay"
