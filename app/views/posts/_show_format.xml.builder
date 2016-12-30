xml.instruct! :xml, :version=>"1.0"

xml.people do
  @posts.each do |post|
    xml.post do
      xml.title post.title
      xml.body post.body
    end
  end
end
