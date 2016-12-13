class SurveysController < ApplicationController
  respond_to :html

  def new
    @survey = Survey.new
  end

  def show
    @survey = current_user.surveys.find(params[:id])
  end

  def create
    @survey = current_user.surveys.create survey_params
    respond_with @survey
  end

  private

    def survey_params
      params.require(:survey).permit :title, :context, choices_attributes: [:title, :id]
    end

end
