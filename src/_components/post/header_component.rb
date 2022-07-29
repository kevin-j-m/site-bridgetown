class Post::HeaderComponent < BaseComponent
  def initialize(post)
    @post = post
    @data = post.data
  end

  private

  def date
    date_to_string(post.data.date, "ordinal", "US")
  end

  attr_reader :post, :data
end
