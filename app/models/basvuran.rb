class Basvuran < ActiveRecord::Base
  belongs_to :gonullu
  belongs_to :user
  belongs_to :giris_form
end
