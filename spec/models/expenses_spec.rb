require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :all do
    @user = User.create(name: 'Racheal Amma')
    @expense = Expense.create(name: 'Studio lights', amount: 13, author_id: @user.id, category_id: 1)
  end

  describe 'validations' do
    it 'should validate the presence of a name' do
      @expense.name = nil
      expect(@expense).to_not be_valid
    end

    it 'should validate the presence of an amount' do
      @expense.amount = nil
      expect(@expense).to_not be_valid
    end

    it 'should validate the length of the name' do
      @expense.name = 'a' * 51
      expect(@expense).to_not be_valid
    end

    it 'should validate the amount is a number' do
      @expense.amount = 'a'
      expect(@expense).to_not be_valid
    end
  end

  describe 'associations' do
    it 'should belong to a user' do
      expect(@expense.user_id).to eq(@user.id)
    end

    it 'should belong to a games' do
      expect(@expense.game_id).to eq(5)
    end
  end
end