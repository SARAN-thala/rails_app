# == Schema Information
#
# Table name: appointments
#
#  id               :integer          not null, primary key
#  appointment_date :date             not null
#  physician_id     :integer          not null
#  patient_id       :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_appointments_on_patient_id    (patient_id)
#  index_appointments_on_physician_id  (physician_id)
#

class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  validates_datetime :appointment_date, on: :create, on_or_after: :today
end