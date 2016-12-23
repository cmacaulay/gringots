require './lib/person'

class Bank
  attr_reader :bank_name,
              :bank_balance

  def initialize(bank_name)
    @bank_name = bank_name
    @account_balance
    # @person    = Person.new
  end

  def announce_instance
    "#{bank_name} has been created"
  end

  def open_account(person)
    return person.banks << @bank_name
    puts "An account has been opened for #{person.name} at #{bank_name}."
  end

  def deposit(person, amount)
      account_balance(amount)

  end

  def deposit_sucessful_message(person, amount)
    "#{amount} galleons have been deposited into #{person.name}'s #{bank_name} account. Balance: #{account_balance} Cash: #{person.cash_level}'"
  end

  def account_balance(amount)
    @account_balance = amount
  end
end

# chase = Bank.new("JP Morgan Chase")
# chase.announce_instance
#
# wells_fargo = Bank.new("Wells Fargo")
# wells_fargo.announce_instance
