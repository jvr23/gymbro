# == Schema Information
#
# Table name: visits
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  gym_id     :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Visit < ApplicationRecord
  after_commit :send_notificacion, on: %i[create]
  belongs_to :user
  belongs_to :gym


  private

    def send_notificacion
      ActionCable.server.broadcast("notification_#{self.gym.user_id}", {body: "El usuario #{self.user.name} desea acceder al gimansio #{self.gym.name}, ¿Aceptar?"})
    end
end
