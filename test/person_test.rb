require './test/test_helper'
require './lib/person'

class PersonTest < Minitest::Test

  def test_class_exists
    professor = Person.new("Minerva", 1000)

    assert_equal Person, professor.class
    assert_instance_of Person, professor
  end

  def test_name_and_cash_level
    professor = Person.new("Minerva", 1000)

    assert_equal "Minerva", professor.name
    assert_equal 1000, professor.cash_level
  end



end
