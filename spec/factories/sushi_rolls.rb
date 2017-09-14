FactoryGirl.define do

  factory :sushi_roll do
    price (0..15).to_a.sample
    name "Random Roll"
  end
end