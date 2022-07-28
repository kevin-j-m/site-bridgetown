class MarkdownComponent < BaseComponent
  def call
    tag.article content, class: "prose prose-slate"
  end
end
