require 'test_helper'

class ConcorrenciaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Concorrencia.new.valid?
  end
end
