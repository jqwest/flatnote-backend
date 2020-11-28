class Tag < ApplicationRecord
    has_many :notes, through: :notes_tags
    has_many :notes_tags
end
