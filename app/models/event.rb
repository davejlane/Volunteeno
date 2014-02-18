class Event < ActiveRecord::Base
    validates :name, :presence => true, :uniqueness => true
    validates :category, :presence => true
    validates :description, :presence => true #, :description, limit: 300

    has_many :categories
end
