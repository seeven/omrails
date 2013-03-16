class Pin2 < ActiveRecord::Base
  attr_accessible :description, :string

  validates :description, presence: true
end
