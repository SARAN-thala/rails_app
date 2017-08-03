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

# SELECT * FROM physician left_join patient

# SELECT * FROM Physician WHERE name like 's%' INNER JOIN
#   Appointment where appointment_date = '04/08/2017'

# SELECT * FROM physicians INNER JOIN appointments ON appointments.physician_id = physicians.id
# WHERE (name like 's%') AND (appointment_date = '2017-08-06')
# -------------------------------------

# Physician.where("name like 's%'").joins(:appointments).where("appointment_date = '2017-08-06'")