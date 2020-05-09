class CreateVisitHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :visit_histories do |t|
    	t.string :ip_address
    	t.string :country
    	t.references :url
      t.timestamps
    end
  end
end
