class CreateTaggngs < ActiveRecord::Migration[5.1]
  def change
    create_table :taggngs do |t|
      t.references :tag, foreign_key: true
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
