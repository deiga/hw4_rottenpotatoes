Given /^the following movies exist:$/ do |table|
  pre_size = Movie.all.count
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
  post_size = Movie.all.count
  post_size.should be pre_size+table.hashes.size
end

When /^(?:|I )go to (?:the )?(\w+) page for "(.*?)"$/ do |action, page_name|
  movie = Movie.find_by_title(page_name)
  case action
  when "edit"
    # visit edit_movie_path(movie)
    visit "/movies/#{movie.id}/edit"
  when "details"
    visit movie_path(movie)
  end
end

Then /^the director of "([^"]*)" should be "([^"]*)"$/ do |movie_name, director_name|
  movie = Movie.find_by_title(movie_name)
  movie.director.should == director_name
end

Given /^(?:|I )am on (?:the )?(\w+) page for "(.*?)"$/ do |action, page_name|
  step %Q{I go to the #{action} page for "#{page_name}"}
end