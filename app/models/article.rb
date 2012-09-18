class Article < ActiveRecord::Base
  attr_accessible :discipline_id, :full_content, :small_content, :title, :type_id, :article_type

 def small_content
    attributes[:small_content.to_s].html_safe
  end


end
