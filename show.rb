# create shows
  # We create shows through initializing them and setting their name in the argument

#catalogue of tv shows of when they are on the air or not

#delete shows

class Show
  @@all_shows = []
# Creating a blank array

  def initialize(show_name)
    @name = show_name
    @on_the_air = false
    @@all_shows << self
  end

  def on_the_air
    @on_the_air
  end

  def on_the_air=(new_value)
    @on_the_air = new_value
  end

  def deploy
    @on_the_air = true
  end

  def remove
    @on_the_air = false
  end

  def self.get_all_shows
    return @@all_shows
  end

  def self.cancel_everything
    @@all_shows.each do |show|
      show.on_the_air = false
    end
  end

end

simpsons = Show.new('The Simpsons')
seinfeld = Show.new('Seinfeld')

p simpsons
p seinfeld

p simpsons.on_the_air
simpsons.deploy
seinfeld.deploy
# p simpsons.on_the_air

p Show.get_all_shows
Show.cancel_everything
p Show.get_all_shows
