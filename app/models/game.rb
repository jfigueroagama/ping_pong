class Game < ApplicationRecord
  before_save :get_contender

  belongs_to :user
  belongs_to :contender, class_name: 'User', foreign_key: 'contender_id'

  def get_contender
    user = User.find(contender_id)
    self.contender_name = user.email.split('@')[0]
    user = User.find(user_id)
    self.user_name = user.email.split('@')[0]
  end

end
