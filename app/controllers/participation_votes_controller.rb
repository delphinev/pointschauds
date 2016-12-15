class ParticipationVotesController < ApplicationController

  def create
    unless Vote.where(user_id: current_user.id, survey_id: survey.id).any?
      @participation_vote = ParticipationVote.new vote_params
      @participation_vote.user_id = current_user.id
      @participation_vote.survey = survey
      @participation_vote.participate!
    end

    respond_to do |format|
      format.html { respond_with survey }
      format.js
    end
  end

  private

    def vote_params
      params.require(:participation_vote).permit choice_id: []
    end

    def survey
      @survey ||= Survey.find(params[:survey_id])
    end

end