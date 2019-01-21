require "pry"
class User
  attr_accessor :name, :email
  @@all_users = []

  def initialize(email_to_save)
    @email = email_to_save
    @@all_users << self
  end
  def self.all
    return @@all_users
  end
  def self.find_by_email(email)
    @@all_users.each do |user|
      if user.email.include?(email)
        return user
      end
    end
  end
end
