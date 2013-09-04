class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :user_section_roles

  def authorized_on_with_role(section, role)
    puts "hi"
    Rails.logger.info section.inspect
    Rails.logger.info self.user_section_roles.map(&:inspect).join("\n")
    self.user_section_roles.where(section: section, role: Role.where(name: role).first).count > 0
  end
end
