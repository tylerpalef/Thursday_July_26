require_relative "person"

class Student < Person # This is how you make a class inherit another class

  Level = 0 # Constants are not supposed to change. So you put it in a constant variable. That way you can change the number if you have a big class
  # Value should always be there before initialize
  def initialize(f,l)
    super(f,l) # super is a function that will invoke the method in the parent class
    @knowledge_level = Level
  end

  def learn
    @knowledge_level = @knowledge_level + 5

    if @knowledge_level > 20
      bonus
  end

  def knowledge_level
    @knowledge_level
  end

  def slack
    @knowledge_level = @knowledge_level - 5 if @knowledge_level > 0
  end

  # private
  #
  def bonus
    @knowledge_level = @knowledge_level + 100
  end

end
end
