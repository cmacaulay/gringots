class Person
  attr_reader   :cash_level
  attr_accessor :banks,
                :name

  def initialize(name, cash_level)
    @name        = name
    @cash_level  = cash_level
    @banks       = []
  end
# need to keep track of how much money is at each account
  def announce_instance
    puts "#{name} has been created with #{cash_level} galleons in cash."
  end

end

# person1 = Person.new("Minerva", 1000)
#
# person1.announce_instance
#
# person2 = Person.new("Luna", 500)
#
# person2.announce_instance
