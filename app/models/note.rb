class Note < ApplicationRecord
    belongs_to :user, required: false
    belongs_to :tag, required: false
end
