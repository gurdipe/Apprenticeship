class Article < ActiveRecord::Base
  attr_accessible :discipline_id, :full_content, :small_content, :title, :type_id
end
