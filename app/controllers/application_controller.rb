class ApplicationController < ActionController::Base

after_action :current_tenant
def current_ability
  # instead of Ability.new(current_user)
  @current_ability ||= Ability.new(current_account)
end


def current_tenant
	puts "CURRENT TENANT : #{Apartment::Tenant.current}"
end

end
