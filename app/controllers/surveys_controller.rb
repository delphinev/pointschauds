class SurveysController < ApplicationController
  respond_to :html

  def new
    @survey = Survey.new
  end

  def create
    @survey = current_user.surveys.create survey_params
    respond_with @survey
  end

  def update
    survey.update survey_params
    respond_with survey
  end

  private

    def survey_params
      params.require(:survey).permit :title, :context, choices_attributes: [:title, :_destroy, :id]
    end

    def survey
      @survey ||= current_user.surveys.find(params[:id])
    end

    helper_method :survey

end
