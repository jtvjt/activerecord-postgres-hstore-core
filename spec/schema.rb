ActiveRecord::Schema.define :version => 0 do

  create_table :hstore_models, :force => true do |t|
    t.column :name, :string
    t.column :key_value, :hstore
  end

  execute "create index concurrently idx_hstore_model_key_value on hstore_models using gist (key_value)"

  create_table :normal_models, :force => true do |t|
    t.column :name, :string
  end

end