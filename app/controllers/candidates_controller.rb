class CandidatesController < ApplicationController
  def index
    @candidates = Candidate.all
  end

  def import
    Candidate.import(params[:file])
    redirect_to root_url, notice: "Activity Data imported"
  end

end
