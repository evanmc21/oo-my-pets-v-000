class Owner
  attr_accessor :pets, :name, :owner
  attr_reader :species

  @@all = []

  def initialize(owner)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end

  def say_species
    @species = "human"
    "I am a human."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(fish_name)
    new_fishy = Fish.new(fish_name)
    @pets[:fishes] << new_fishy #the @pets hash stored in the pets method is full of instances in the fish class, so here we call the fish instance method.
  end

  def buy_cat(cat_name)
    new_kitty = Cat.new(cat_name)
    @pets[:cats] << new_kitty
  end

  def buy_dog(dog_name)
    new_pup = Dog.new(dog_name)
    @pets[:dogs] << new_pup
  end
end
