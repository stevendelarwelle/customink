class Link < ApplicationRecord

  before_create :generate_uid
  validates :user_url, url: true #needs to be url, used a gem called validate_url

  def generate_uid
    #generates random 6 character/digit string up to 2billion unique ids
    uid = SecureRandom.hex(3)
    until Link.where(:user_url_code => uid).count == 0
      uid = SecureRandom.hex(3)
    end
    self.user_url_code = uid.upcase
  end

end
