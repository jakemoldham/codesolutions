class HomeController < Amber::Controller::Base
  def index
    spot = Post.all
    posts = Post.all
    render("index.slang")
  end
end

