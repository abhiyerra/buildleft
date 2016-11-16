class CreateHelpCenters < ActiveRecord::Migration[5.0]
  def change
    create_table :help_centers do |t|
      t.string :type

      t.string :name
      t.string :address
      t.string :address1
      t.string :city
      t.string :state

      t.string :phone_number
      t.string :email

      t.string :donate_url

      t.st_point :lonlat, geographic: true

      t.index :lonlat, using: :gist

      t.timestamps
    end
  end
end
