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

class UserManager
  def initialize
    @users = []
  end

  def add(username, age, date_signed_up)
    fail "This user is under the age of 18." if age < 18
    fail "Usernames can't have spaces." if username.include?(" ")
    @users << { username: username, date_signed_up: date_signed_up }
  end

  def list
    sorted_users = @users.sort_by { |user| user[:date_signed_up] }

    usernames = sorted_users.map { |user| user[:username] }

    return usernames.join("; ")
  end
end

user_manager = UserManager.new
user_manager.add("kay", 32, Time.new(2022, 8, 5))
user_manager.add("eddie", 31, Time.new(2022, 8, 4))
p user_manager.list
# => "eddie; kay"
