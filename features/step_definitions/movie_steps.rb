Given /^the following movies exist:$/ do |table|
  pre_size = Movie.all.count
  table.hashes.each do |movie|
    Movie.create!(movie)
  end
  post_size = Movie.all.count
  post_size.should be pre_size+table.hashes.size
end

When /^(?:|I )go to (?:the )?(\w+) page for "(.*?)"$/ do |action, page_name|
  movie_id = Movie.find_by_title(page_name).id
  case action
  when "edit"
    visit edit_movie_path(movie_id)
  when "details"
    visit movie_path(movie_id)
  end
end

Given /^(?:|I )am on (?:the )?(\w+) page for "(.*?)"$/ do |action, page_name|
  step %Q{I go to the #{action} page for "#{page_name}"}
end