json.extract! giris_form, :id, :ilk_basvuru_tarihi, :mc_destek_aliyor, :iletisime_gecen, :iletisime_gecme_yolu, :notlar, :created_at, :updated_at
json.url giris_form_url(giris_form, format: :json)