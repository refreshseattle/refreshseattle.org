require 'redcarpet'

module ApplicationHelper
  def markdown content
    markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML, autolink: true, space_after_headers: true
    raw markdown.render content
  end
end
