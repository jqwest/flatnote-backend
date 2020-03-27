class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :note, :tag, :done, :user_id

end
