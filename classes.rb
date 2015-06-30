module Flight
  attr_accessor :airspeed_velocity
  def fly
  puts "I'm #{@name} " + "and I'm flying #{airspeed_velocity}!"
  end
end


class Animal
  attr_accessor :name, :warm_blooded, :num_legs, :color
  def initialize(name, warm_blooded, num_legs, color)
    @name = name
    @warm_blooded = warm_blooded
    @num_legs = num_legs
    @color = color

  end
  def speak
    puts "I am a living thing"
  end
end

class Mammal < Animal
  def initialize(name, num_legs, color)
    super(name, true, num_legs, color)
  end
    
  def speak
    super
    puts "I don't lay eggs!"
  end
end

class Amphibian < Animal
  def initialize(name, num_legs, color)
    super(name, false, num_legs, color)
  end
  def speak
    super
    puts "I can swim!"
  end
end

class Primate < Animal
  def initialize(name, num_legs, color)
    super(name, true, num_legs, color)
  end
  def speak
    super
    puts "I can walk!"
  end
end

class Frog < Amphibian
  def initialize(name)
    super(name, 4, 'green')
  end
  def speak
    super
    puts "I go ribbit"
  end
end

class Bat < Mammal
  def initialize(name)
    super(name, 2, "black")

  end
  def speak
    super
    puts "Humans can't hear my voice :("
  end
end

class Parrot < Animal
  include Flight
  def initialize(name, airspeed_velocity='slowly')
    super(name, true, 2, "rainbow")
    @airspeed_velocity = airspeed_velocity
  end
  def speak
    super
    puts "I can speak"
  end
end

class Chimpanzee < Primate
  def initialize(name)
    super(name, 2, "black or brown")
  end
  def speak
    super
    puts "I am hairy"
  end
end
