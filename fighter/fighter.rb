class Fighter
  # allows us access to read or see what value
  # is stored in our name attribute when we call
  # it on an instance of the Fighter class.

  # attr_reader because we don't have any need
  # to change the fighter's name after initializing him,
  # only the ability to retrieve the value later,
  # if necessary.
  attr_reader :name

  # we want to be able to get the value contained in
  # each attribute and also change the value later in
  # our program
  attr_accessor :health, :power

  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end

  def attack(enemy)
    enemy.lose_health(self.power, enemy.health)
  end

  def lose_health(enemy_power, health)
    self.health -= enemy_power
  end
end

fighter_1 = Fighter.new("Darth Vader", 150, 40)
fighter_2 = Fighter.new("Luke Skywalker", 80, 20)
puts fighter_1.attack(fighter_2)
puts fighter_1.inspect
puts fighter_2.attack(fighter_1)
puts fighter_2.inspect
