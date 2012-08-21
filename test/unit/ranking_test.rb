require 'test_helper'

class RankingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ranking.new.valid?
  end
end
