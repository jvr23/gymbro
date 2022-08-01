# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string           not null
#  lastname               :string           not null
#  age                    :integer          not null
#  account_id             :integer          not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
class User < ApplicationRecord
  has_one_attached :profile_pic
  after_commit :set_default_avatar, on: %i[create update]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :account
  has_many :gyms
  has_many :reviews
  has_many :gyms_reviews, through: :reviews, source: :gym
  has_many :visits
  has_many :visited_gyms, through: :visits, source: :visits

  private
  #Set default profile picture
  def set_default_avatar
    unless profile_pic.attached?
      profile_pic.attach(
        io: File.open(
          "app/assets/images/default-user.png"),
          filename: "dafault-user.png",
          content_type: "image/png"
      )
    end
  end
end
