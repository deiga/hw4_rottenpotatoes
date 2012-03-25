require 'spec_helper'

describe MoviesController do 
  describe "Find movies movies with same director" do
    it "should call the model method with correct arguments" do
      Movie.should_receive(:find_by_director).with("George Lucas")
      get("find_with_director", :director => "George Lucas")
    end
  end
end