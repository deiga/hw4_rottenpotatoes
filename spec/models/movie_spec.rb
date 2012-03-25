require 'spec_helper'

describe Movie do
  describe "create Movie" do
    it "should not fail" do
      Movie.create!(:title => "Alien", :rating => "R", :release_date => "1979-05-25").should be_valid
    end
  end 

  describe "find with director" do
    Movie.create!(:title => "Star Wars: A New Hope", :rating => "PG", :release_date => "1977-05-25", :director => "George Lucas")
    Movie.find_by_director("George Lucas").should_not be_nil
  end
end