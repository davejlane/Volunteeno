class Event < ActiveRecord::Base
      validates :name, :presence => true, :uniqueness => true
    validates :categoryID, :presence => true
    validates :description, :presence => true #, :description, limit: 300

    belongs_to :category
end
