require 'spec_helper'

describe Movie do
  describe "create Movie" do
    it "should not fail" do
      Movie.create!(:title => "Alien", :rating => "R", :release_date => "1979-05-25").should be_valid
    end
  end 
end