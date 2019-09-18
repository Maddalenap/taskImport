class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def import
    Note.import(params[:file])
    redirect_to notes_url, notice: "Activity Data imported"
  end
end
