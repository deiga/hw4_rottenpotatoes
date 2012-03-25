require 'spec_helper'

describe MoviesController do 
  describe "GET find_with_director" do
    it "should call model with director" do
      movie = Movie.find_by_director("George Lucas")
      Movie.should_receive(:find_by_director).with("George Lucas")
      get :with_same_director, :id => movie.id
    end
  end
end