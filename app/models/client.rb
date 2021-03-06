class Client < ApplicationRecord
  has_many :inspections
  has_many :inspectors, through: :inspections

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  
  def self.create_from_provider_data(provider_data)
    where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |client|
      client.email = provider_data.info.email
      client.first_name = provider_data.info.first_name
      client.last_name = provider_data.info.last_name
      client.password = Devise.friendly_token[0,20]
    end
  end

end
