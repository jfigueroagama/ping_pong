class Game < ApplicationRecord
  belongs_to :user
  belongs_to :contender, class_name: 'User', foreign_key: 'contender_id'

  def contender_name(contenders)
    result = []
    contenders.each do |c|
      user = User.find_by_id(c.contender_id)
      result << user.email
    end
    result
  end

end
