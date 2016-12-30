module ApplicationHelper
  def format(f)
    case f
    when 'xml'
      'show_format.xml.builder'
    when 'json'
      'show_format.json'
    else
      'show_format'
    end
  end
end
