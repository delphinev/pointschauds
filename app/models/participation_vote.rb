class ParticipationVote
  attr_accessor :choice_id, :user_id, :survey

  extend ActiveModel::Naming
  include ActiveModel::Conversion

  def initialize(params = {})
    params ||= {}
    params.each_pair do |k, v|
      self.public_send(:"#{k}=", v) if v.present?
    end
  end

  def persisted?
    false
  end

  def participate!
    # choices = self.choice_id.reject! { |choice| choice.to_i == 0 }
    self.choice_id.each { |choice| Vote.create_from_participation(self.user_id, self.survey.id, choice.to_i) }
  end
end