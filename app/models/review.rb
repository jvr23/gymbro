# == Schema Information
#
# Table name: reviews
#
#  id         :integer          not null, primary key
#  review     :integer          not null
#  user_id    :integer          not null
#  gym_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Review < ApplicationRecord
  belongs_to :user
  belongs_to :gym
end
