require 'test_helper'

class QuoteTest < ActiveSupport::TestCase

  test "unique_tag" do 
   quote = FactoryGirl.create(:quote, :author => 'Ken Mazaika')
    #quote = Quote.create(:author => 'Ken Mazaika', :saying => 'You only yolo once.')
    expected = 'KM#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end

  def unique_tag
    10
  end

end
