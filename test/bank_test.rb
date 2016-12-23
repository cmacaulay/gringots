require './test/test_helper'
require './lib/bank'

class BankTest < Minitest::Test

  def test_bank_class_exists
    bank = Bank.new("BofA")

    assert_equal Bank, bank.class
    assert_instance_of Bank, bank
  end

  def test_bank_name
    bank = Bank.new("JP Morgan Chase")

    assert_equal "JP Morgan Chase", bank.bank_name
  end

  def test_bank_can_open_account
    chase = Bank.new("JP Morgan Chase")
    person_1 = Person.new("Harry", 10)

    chase.open_account(person_1)
    assert_equal [chase.bank_name], person_1.banks
  end

  def test_deposit_deposits
    bofa     = Bank.new("Bank of America")
    person_1 = Person.new("Hermione", 10000)

    bofa.open_account(person_1)
    assert_equal [bofa.bank_name], person_1.banks
    binding.pry
  end

end
