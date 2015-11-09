class FeaturedScreen < ScreenActions

  def featured_button
    find_element(:xpath, "//UIAButton[@name='Featured']")
  end

  def featured_button_value
    featured_button.attribute("value")
  end

  def featured_movies_table
    find_element(:class_name, "UIATableView").find_elements(:class_name, "UIATableCell")
  end

  def print_featured_movies_total
    movies_total = featured_movies_table.size
    puts "Total movies featured: #{movies_total}"
  end

  def featured_movies_cell(cell = 1)
    find_element(:xpath, "//UIAApplication[1]/UIAWindow[1]/UIATableView[1]/UIATableCell[#{cell}]")
  end

  def title_label
    find_element(:name, "title_label").attribute("label")
  end

  def year_label
    find_element(:name, "year_label").attribute("label")
  end

  def rating_label
    find_element(:name, "rating_label").attribute("label")
  end

  def print_movie_cell_info
    title = title_label
    year = year_label
    rating = rating_label
    puts "Title: #{title}, year: #{year}, rating: #{rating}"
  end

  def print_movies_info(number_of_movies)
     cell = 1
     while cell <= number_of_movies.to_i do
       featured_movies_cell(cell).click
       print_movie_cell_info
       back_button.click
       cell += 1
     end

  end

  def print_highest_rated_movie(number_of_movies)
    cell = 1
    ratings = {}

    while cell <= number_of_movies.to_i do
      featured_movies_cell(cell).click
      ratings.store(title_label, rating_label[1..-1].to_f)
      back_button.click
      cell += 1
    end

    highest_ranked_movie = ratings.select {|k,v| v == ratings.values.max }
    highest_ranked_movie_title = highest_ranked_movie.keys.to_s.chop.reverse.chop.reverse
    highest_ranked_movie_rating = highest_ranked_movie.values.to_s.chop.reverse.chop.reverse

    puts "The highest rated movie is #{highest_ranked_movie_title} rated #{highest_ranked_movie_rating}"
  end


end