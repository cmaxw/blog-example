class CreateUserSectionRoles < ActiveRecord::Migration
  def change
    create_table :user_section_roles do |t|
      t.references :user, index: true
      t.integer :section_id
      t.string :section_type
      t.references :role, index: true

      t.timestamps
    end
  end
end
