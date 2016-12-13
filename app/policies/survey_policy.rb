class SurveyPolicy < ApplicationPolicy

  def update?
    user.admin? or record.creator_id == user.id
  end

end