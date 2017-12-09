require 'json'

class Project < ActiveRecord::Base

  has_many :rows

  def pretty_schema
    if schema.length > 0
      JSON.pretty_generate(JSON.parse(schema))
    else
      "No schema defined."
    end
  end

  def fields
    if schema.length > 0
      JSON.parse(schema)["fields"]
    else
      {}
    end
  end

end
