class SurveyPolicy < ApplicationPolicy

  def update?
    user && (user.admin? or record.creator_id == user.id)
  end

end
