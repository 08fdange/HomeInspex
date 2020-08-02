class Inspector < ApplicationRecord
  has_many :inspections
  has_many :clients, through: :inspections

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         #omniauth_providers: [:facebook, :google_oauth2]
         
  #def self.create_from_provider_data(provider_data)
    #where(provider: provider_data.provider, uid: provider_data.uid).first_or_create do |inspector|
      #inspector.email = provider_data.info.email
      #inspector.first_name = provider_data.info.first_name
      #inspector.last_name = provider_data.info.last_name
      #inspector.password = Devise.friendly_token[0,20]
    #end
  #end

  def self.order_by_last_name
    Inspector.order(:last_name)
  end

end 
