class Chat
  include Mongoid::Document
  include Mongoid::Timestamps
  field :question, type: String
  field :response, type: String
  
  belongs_to :weather
end
