class Post < ActiveRecord::Base
  before_validation :compile_markdown

  def compile_markdown
    markdown_compiler = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true)
    self.body = markdown_compiler.render(self.markdown)
  end
end
