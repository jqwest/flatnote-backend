class NoteSerializer < ActiveModel::Serializer
  attributes :id, :title, :note, :created_at
end
