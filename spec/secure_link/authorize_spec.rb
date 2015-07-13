# require 'rails_helper'

describe Authorize do
  describe "authorized?" do
    it "should return false" do
      expect(authorized?).to be_falsey
    end
  end
end
