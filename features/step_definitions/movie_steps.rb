Given /^the following movies exist:$/ do |table|
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

When /^(?:|I )go to (?:the )?(\w+) page for "(.*?)"$/ do |action, page_name|
  visit edit_movie_path(Movie.find_by_title(page_name).id)
end