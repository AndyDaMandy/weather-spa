class Weather
  include Mongoid::Document
  include Mongoid::Timestamps
  field :location, type: String
  field :data, type: String

  has_many :chats, dependent: :destroy
end
