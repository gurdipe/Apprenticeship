class LastUpdate < ActiveRecord::Base
  attr_accessible  :date_now

  def updated_at
  	Time.now.xmlschema
  end
end
