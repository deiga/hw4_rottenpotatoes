require 'spec_helper'

describe MoviesHelper do
  describe "oddness" do
    it "should be 'odd' when odd amount" do
      oddness(3).should == "odd"
    end
    it "should be 'even' when even amount" do
      oddness(2).should == "even"
    end
  end
end