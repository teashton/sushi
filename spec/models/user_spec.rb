require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
  	it { should validate_presence_of(:first_name) }
  	it { should validate_presence_of(:last_name) }
  	it { should validate_presence_of(:age) }
  	it {should validate_presence_of(:gender) }
  end

  	it do
  		should validate_inclusion_of(:gender).in_array(['Male', 'Female', 'Other'])
  	end

  	it do
  		should validate_numericality_of(:age)
  	end

  	describe 'associations' do
    	it { should have_many(:sushi_rolls) }
  	end


		describe 'is old enough?' do
			before(:each) do
		@user = FactoryGirl.create(:user, age: 20)
		end

		it 'returns true if user age greater than 12' do
      expect(@user.is_old_enough?).to eq(true)
    end

    it 'returns false if user age < 12' do
      	@user.update(age: 3)
      expect(@user.is_old_enough?).to eq(false)
    end
  end
end
