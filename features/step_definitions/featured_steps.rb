Given(/^I land on Featured Screen$/) do
  expect(featured_screen.featured_button_value).to be == 1
end


Then(/^Count total movies displayed and print out into console$/) do
  featured_screen.print_featured_movies_total
end


Then(/^Open first (\d+) movies and print title, year and rating into console$/) do |number_of_movies|
  featured_screen.print_movies_info(number_of_movies)
end

Then(/^collect first (\d+) movies ratings and print the highest one into concole$/) do |number_of_movies|
  # binding.pry
  featured_screen.print_highest_rated_movie(number_of_movies)
end