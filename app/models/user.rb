class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  has_many :reviews, dependent: :destroy

  #validates :first_name, :last_name, presence: true
  devise :omniauthable, :omniauth_providers => [:facebook]


def self.from_omniauth(auth)
    where(email: auth.info.email).first_or_initialize.tap do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[6,20]
      user.first_name = auth.info.first_name
      user.last_name = auth.info.last_name
      user.save
    end


end

  #def self.from_omniauth(auth)
  #where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    #user.email = auth.info.email
    #user.password = Devise.friendly_token[0,20]
    #user.name = auth.info.name   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.first_name = data["first_name"] if user.first_name.blank?
        user.last_name = data["last_name"] if user.last_name.blank?
      end
    end
  end

  #def self.find_for_oauth(auth, signed_in_resource = nil)
  #end

  #def self.create_with_omniauth(auth)
   #create! do |user|
     #user.provider = auth['provider']
     #user.uid = auth['uid']
     #if auth['info']
       #user.name = auth['info']['name'] || ""
       #user.email = auth['info']['email'] || ""
     #end
   #end
 #end


  #def self.from_omniauth(auth)
    #email = auth.info.email
    #user = User.find_by(email: email) if email
    #user ||= User.create do |user|
              #user.provider= auth.provider
              #user.uid= auth.uid
              #user.email = auth.info.email
              #user.password = Devise.friendly_token[0,20]
              #user.name = auth.info.name
              #user.email ||= "#{auth.uid}_#{auth.uid}@email.com"
            #end
  #end


  #def self.from_omniauth(auth)
  #where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
   # user.provider = auth.provider
    #user.uid = auth.uid
    #user.email = auth.info.email
    #user.password = Devise.friendly_token[0,20]
    #user.name = auth.info.name   # assuming the user model has a name
    #user.image = auth.info.image # assuming the user model has an image
    # If you are using confirmable and the provider(s) you use validate emails, 
    # uncomment the line below to skip the confirmation emails.
    # user.skip_confirmation!
  
#end


 
#end