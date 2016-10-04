class CreateGirisForms < ActiveRecord::Migration
  def change
    create_table :giris_forms do |t|
      t.date :ilk_basvuru_tarihi
      t.string :mc_destek_aliyor
      t.string :iletisime_gecen
      t.string :iletisime_gecme_yolu
      t.text :notlar

      t.timestamps
    end
  end
end
