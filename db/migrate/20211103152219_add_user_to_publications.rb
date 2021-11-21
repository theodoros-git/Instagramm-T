class AddUserToPublications < ActiveRecord::Migration[6.0]
  def change
    add_reference :publications, :user, foreign_key: true
  end
end
