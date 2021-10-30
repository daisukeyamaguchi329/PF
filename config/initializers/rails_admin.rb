RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
    config.authenticate_with do
     warden.authenticate! scope: :user
   end
   config.current_user_method(&:current_user)


  ## == CancanCan ==
  #config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
    ## With an audit adapter, you can add:
    # history_index
    # history_show
      config.model 'User' do
        list do
          field :admin
          field :name
          field :email
          field :profile_image_id
          field :encrypted_password
          field :reset_password_token
          field :reset_password_sent_at
          field :remember_created_at
          field :created_at
          field :updated_at
        end
      end
      config.model 'Post' do
        list do
          field :user_id
          field :name
          field :location
          field :longitude
          field :latitude
          field :image_id
          field :business_hours_start
          field :business_hours_end
          field :charge_system
          field :charge_system2
          field :wifi_equipment
          field :power
          field :caption
          field :created_at
          field :updated_at
        end
      end
      config.model 'Review' do
        list do
          field :user_id
          field :post_id
          field :rate
          field :comment
          field :created_at
          field :updated_at
        end
      end
      config.model 'Favorite' do
        list do
          field :user_id
          field :post_id
          field :created_at
          field :updated_at
        end
      end
      config.model 'Contact' do
        list do
          field :name
          field :email
          field :message
          field :created_at
          field :updated_at
        end
      end

end
