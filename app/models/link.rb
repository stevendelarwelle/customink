class Link < ApplicationRecord

  before_create :generate_uid
  validates :user_url, url: true

  def generate_uid
    uid = SecureRandom.hex(3)
    until Link.where(:user_url_code => uid).count == 0
      uid = SecureRandom.hex(3)
    end
    self.user_url_code = uid.upcase
  end

end
