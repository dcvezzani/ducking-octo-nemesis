require 'spec_helper'

describe Person do
  describe "the basics" do
    before do
      @person = FactoryGirl.build(:person)
    end

    it { should have_many(:addresses) }
    it { should have_one(:residential_address) }
    it { should have_one(:mailing_address) }
    it { should have_many(:aliases) }
    it { should have_many(:phone_numbers) }
    it { should have_many(:email_addresses) }

    it "should associate a mailing address" do
      @person.mailing_address = FactoryGirl.create(:mailing_address)
      @person.save!
      @person.addresses.length.should == 1
    end
    it "should associate a residential address" do
      @person.residential_address = FactoryGirl.create(:residential_address)
      @person.save!
      @person.addresses.length.should == 1
    end
    it "should associate a both mailing and residential addresses" do
      @person.mailing_address = FactoryGirl.create(:residential_address)
      @person.residential_address = FactoryGirl.create(:residential_address)
      @person.save!
      @person.addresses.length.should == 2
    end
  end
end
