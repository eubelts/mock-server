class CreateMocks < ActiveRecord::Migration[5.1]
  def change
    create_table :mocks do |t|
      t.string :name, null: false
      t.text :description
      t.string :request_method, null: false
      t.string :route_path, null: false
      t.string :status, null: false
      t.json :response, default: {}

      t.timestamps
    end
  end
end
