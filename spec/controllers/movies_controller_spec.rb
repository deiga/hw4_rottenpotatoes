require 'spec_helper'

describe MoviesController do 
  describe "GET find_with_director" do
    it "should call model with director" do
      movie = Movie.create!(:title => "Star Wars: A New Hope", :rating => "PG", :director => "George Lucas")
      Movie.should_receive(:where).with(:director => "George Lucas")
      get :with_same_director, :id => movie.id
    end
  end
end