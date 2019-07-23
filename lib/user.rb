require "pry"

class User
  attr_accessor :age, :email
  @@all_users = []

  def initialize(email_to_save, age_to_save)
    @age = age_to_save
    @@all_users << self
    if check_email(email_to_save)
      @email = email_to_save
    else
      puts "ERREUR! EAMIL FOIREURX, Recommence"
    end
  end

  def self.all
    @@all_users
  end

  def self.find_by_email(email)
    @@all_users.each do |user|

      if user.email == email
        return user
      end

    end

    puts "aucun utilisateur n'a cet email"
    return false
  end
  private 
  def check_email(email_to_save)
    if email_to_save.match(/[@]/)
      return email_to_save
    end
  end

end