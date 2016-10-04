class Basvuran < ActiveRecord::Base
  belongs_to :gonullu
  belongs_to :user
  belongs_to :giris_form
  validates_formatting_of :telefon, using: :us_phone
end
