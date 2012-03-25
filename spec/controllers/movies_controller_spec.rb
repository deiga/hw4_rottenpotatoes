require 'spec_helper'

describe MoviesController do 
  describe "Find movies movies with same director" do
    it "should call the model method with correct arguments" do
      movie = Movie.find_by_director("George Lucas")
      Movie.should_receive(:find_by_director).with("George Lucas")
      get :find_with_director, :id => movie.id
    end
  end
end