class Users::RegistrationsController < Devise::RegistrationsController
  def create 
    session["#{resource_name}_return_to"] = new_account_path
    super 
  end
end
