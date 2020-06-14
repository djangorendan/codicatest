RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :admin
  end
  config.current_user_method(&:current_admin)

  ## == CancanCan ==
  config.authorize_with :cancancan

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

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Admin' do
    list do
      field :email
      field :role do
        formatted_value do # used in form views
          value.to_s.delete_prefix('["", "').delete_suffix('"]').delete('"')
          # value.to_s.split(" ").to_sentence
        end

      end
    end
    show do
      field :email
      field :role
    end
    create do
      field :email
      field :password
      field :password_confirmation
      field :role, :enum do
        enum do
          ['book_manager', 'group_manager', 'author_manager']
        end
        multiple do
          true
        end
      end
      exclude_fields :reset_password_sent_at, :remember_created_at
    end
    edit do
      field :email
      field :password
      field :password_confirmation
      field :role, :enum do
        enum do
          ['superadmin', 'book_manager', 'group_manager', 'author_manager']
        end
        multiple do
          true
        end
      end
      exclude_fields :reset_password_sent_at, :remember_created_at
    end
  end

  config.model 'Author' do
    field :name
    field :books
  end

  config.model 'AuthorsBook' do
    visible false
  end

  config.model 'Book' do
    list do
      field :image
      field :name
      field :group
      field :authors
    end
    field :image
    field :name
    field :discription
    field :group
    field :authors
  end

  config.model 'Group' do
    field :name
    field :books
  end

end
