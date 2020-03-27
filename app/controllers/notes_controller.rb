class NotesController < ApplicationController
  def index
    notes = Note.all
    render json: notes
  end

  def show
   note = Note.find_by(id: params[:id])
   render json: note
  end

 def create
  note = Note.create(title: params[:title], note: params[:note], tags: params[:tags], done: params[:done])
  render json: note
end

def update
  note = Note.find_by(id: params[:id])
  note.update(title: params[:title])
  note.update(note: params[:note])
  note.update(tags: params[:tags])

  render json: note
end  


end
