class UserSectionRole < ActiveRecord::Base
  belongs_to :user
  belongs_to :role
  belongs_to :section, polymorphic: true
end
