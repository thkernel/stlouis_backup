class ApplicationController < ActionController::Base

def current_ability
  # instead of Ability.new(current_user)
  @current_ability ||= Ability.new(current_account)
end

end
