class RailsComMigrate < ActiveRecord::Migration[6.0]
  def change

    create_table :active_storage_blob_defaults do |t|
      t.string :record_class
      t.string :name
      t.boolean :private
      t.timestamps
    end unless table_exists?(:active_storage_blob_defaults)

    change_column_null :active_storage_blobs, :checksum, true

    create_table :infos do |t|
      t.string :code
      t.string :value
      t.string :version
      t.string :platform
      t.timestamps
    end unless table_exists?(:infos)

    create_table :cache_lists do |t|
      t.string :path
      t.string :key
      t.timestamps
    end unless table_exists?(:cache_lists)

  end
end
