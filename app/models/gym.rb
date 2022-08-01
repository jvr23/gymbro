# == Schema Information
#
# Table name: gyms
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  address    :string           not null
#  opens      :time             not null
#  closes     :time             not null
#  owner_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Gym < ApplicationRecord
  belongs_to :user
  has_many :reviews
  has_many :user_reviewed, through: :reviews, source: :user
  has_many :visits
  has_many :visited_by, through: :visits, source: :user
end
