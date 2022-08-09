require 'rails_helper'

RSpec.describe Receipt, type: :model do

  context "is valid" do
    # let(:receipt) { FactoryBot.create(:receipt) }

    it "with correct params" do
      receipt = Receipt.new(business_name: "arya loves lowers", url: "https://aryalovesflowers.com", upload_date: Date.today)
      expect(receipt).to be_valid
    end

    # it "with factory" do
    #   booking = FactoryBot.build(:booking)
    #   expect(booking).to be_valid
    # end
  end

  # context "is invalid" do
  #   it "without start_date" do
  #     booking = FactoryBot.build(:booking, start_date: nil)
  #     expect(booking).not_to be_valid
  #   end

  #   it "should have correct message without start_date" do
  #     booking = FactoryBot.build(:booking, start_date: nil)
  #     booking.valid?

  #     expect(booking.errors.messages[:start_date]).to include("can't be blank")
  #   end
    
  #   it "without end_date" do
  #     booking = FactoryBot.build(:booking, end_date: nil)
  #     expect(booking).not_to be_valid
  #   end

  #   it "should have correct message without end_date" do
  #     booking = FactoryBot.build(:booking, end_date: nil)
  #     booking.valid?

  #     expect(booking.errors.messages[:end_date]).to include("can't be blank")
  #   end

  #   it "when booking less than 2 nights" do
  #       booking = FactoryBot.build(:booking, end_date: Date.today + 1.days)
  #       expect(booking).not_to be_valid
  #   end

  #   it "should have correct message when booking less than 2 nights" do
  #     booking = FactoryBot.build(:booking, end_date: Date.today + 1.days)
  #     booking.valid?

  #     expect(booking.errors.messages[:end_date]).to include("Minimum stays must be 2 or more nights")
  #   end

  #   it "when booking more than 14 nights" do
  #     booking = FactoryBot.build(:booking, end_date: Date.today + 17.days)
  #     expect(booking).not_to be_valid
  #   end

  #   it "should have correct message when booking more than 14 nights" do
  #     booking = FactoryBot.build(:booking, end_date: Date.today + 17.days)
  #     booking.valid?

  #     expect(booking.errors.messages[:end_date]).to include("Max stay duration is 14 nights per share")
  #   end
  # end
end
