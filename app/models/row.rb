require 'json'

class Row < ActiveRecord::Base

  belongs_to :project

  validates :identifier, uniqueness: { scope: :project_id, message: "repeat identifier seen!" }

  def text
    File.open(identifier, 'r') do |f|
      f.read
    end
  end

  def data_hash
    if data && data.length > 0
      JSON.parse(data)
    else
      {}
    end
  end

end
