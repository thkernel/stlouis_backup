module SidebarMenusHelper

    def sidebar_menu 
        if current_account.role.name == "Superuser"
            render "layouts/partials/dashboard/navs/superuser-nav"
        elsif current_user.user? 
            render "layouts/partials/dashboard/navs/user-nav"
       

        else
            render "layouts/partials/dashboard/navs/superuser-nav"


        end

    end

end