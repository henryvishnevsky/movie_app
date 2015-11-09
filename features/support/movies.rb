class Movies

  def featured_screen
    @featured_screen ||= FeaturedScreen.new
  end

  def screen_actions
    @screen_actions ||= ScreenActions.new
  end

end