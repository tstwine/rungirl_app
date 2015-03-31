class Runner < ActiveRecord::Base
	has_many :distances, dependent: :destroy

  def full_name
    return "#{first_name} #{last_name}"
  end
end

