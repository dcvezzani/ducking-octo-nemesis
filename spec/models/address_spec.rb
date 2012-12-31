require 'spec_helper'

describe Address do
  describe "the basics" do
    before do
      @address = FactoryGirl.build(:address)
    end
    it { should have_many(:people) }
  end
end
