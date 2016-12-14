class VotesController < ApplicationController

  def create
    survey.votes.where(user_id: current_user.id).create vote_params

    respond_to do |format|
      format.html { respond_with survey }
      format.js
    end
  end

  private

    def vote_params
      params.require(:vote).permit :choice_id
    end

    def survey
      @survey ||= Survey.find(params[:survey_id])
    end
end