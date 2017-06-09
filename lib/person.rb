
require 'pry'
class Person

  attr_accessor :bank_account
  attr_reader :name

  def initialize(name)

    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @MAX_POINTS = 10
    @MIN_POINTS = 0

  end

  def happiness=(happiness_number)

    @happiness = [happiness_number,@MAX_POINTS].min
    @happiness = [@happiness, @MIN_POINTS].max
  end

  def happiness
    @happiness
  end

  def hygiene=(hygiene_number)

    @hygiene = [hygiene_number,@MAX_POINTS].min
    @hygiene = [@hygiene, @MIN_POINTS].max

  end

  def hygiene

    @hygiene

  end

  def clean?

    return @hygiene > 7

  end

  def happy?

    return @happiness > 7

  end

  def get_paid(salary)

    @bank_account += salary
    return "all about the benjamins"

  end

  def take_bath

    self.hygiene = self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"

  end

  def work_out

    self.happiness = self.happiness + 2
    self.hygiene = self.hygiene - 3
    return "♪ another one bites the dust ♫"

  end

  def call_friend(friend)

    self.happiness = self.happiness + 3
    friend.happiness = friend.happiness + 3
    return "Hi #{friend.name}! It's #{@name}. How are you?"

  end

  def start_conversation(person, topic)

    if topic == "politics"
      person.happiness = person.happiness - 2
      self.happiness = self.happiness - 2
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      person.happiness = person.happiness + 1
      self.happiness = self.happiness + 1
      return "blah blah sun blah rain"
    else
      return "blah blah blah blah blah"
    end

  end

end
