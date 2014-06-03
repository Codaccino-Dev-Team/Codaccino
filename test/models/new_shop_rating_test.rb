require "test_helper"

describe NewShopRating do
  let(:dynamic_rating) { DynamicRating.new }

  it "Must do a first average for a given rating" do
    key = :test_key
    old_hash = {key => 3}
    new_hash = {key => 5}
    count = 1
    expected = (old_hash[key] + new_hash[key]) / (count + 1)
    @average = NewShopRating.new new_hash, old_hash, count
    assert_equal expected, @average.rating_for(key)
  end
end
