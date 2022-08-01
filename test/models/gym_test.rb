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
require "test_helper"

class GymTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
