require 'redcarpet'

module ApplicationHelper
  def markdown content
    markdown = Redcarpet::Markdown.new Redcarpet::Render::HTML, autolink: true, space_after_headers: true
    raw markdown.render content
  end

  def upcoming_speakers
    @upcoming_speakers ||= Event.upcoming.reverse.map {|e| {name: e.speaker, date: e.event_date} }
  end
end
