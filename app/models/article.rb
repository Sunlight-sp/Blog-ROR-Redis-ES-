require 'elasticsearch/model'

class Article < ApplicationRecord
  #include Tire::Model::Search
  #include Tire::Model::Callbacks
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
  settings do
      mappings dynamic: false do
        indexes :title, type: :text
        indexes :content, type: :text, analyzer: :english
      end
    end

end
