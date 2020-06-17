class Note < ApplicationRecord
    has_many :notes_tags
    has_many :tags, through: :notes_tags
    belongs_to :user
end
