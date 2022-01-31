module ApplicationHelper
	# Include all helpers
	
	include OrdersHelper
    
	

		def product_thumbnail(product)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if product.thumbnail.attached?
			#image_tag product.thumbnail.variant(resize: "308x205")
			image_tag product.thumbnail.variant(combine_options: {resize: "308x205^",  gravity: 'Center', crop: '308x205+0+0' })
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def product_cover_thumbnail(product)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if product.thumbnail.attached?
            image_tag product.thumbnail.variant(resize: "700x400")
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end


	def current_shopping_cart
        session[:shopping_cart]
	end
	
	def cart_items_count
		#shopping_cart = Cart.find(current_shopping_cart.id)
		@shopping_cart.cart_items.count
	  end

	def shop_tenant?
		if Apartment::Tenant.current == "shop"
			true
		else
			false
		end
	end

	def get_tenant_status?(subdomain)
		tenant = Tenant.find_by(name: subdomain)

		if tenant.present? #&& tenant.status == true
			true 
		else
			#false
			true #for test
		end
	end

	def unconfirmed_order?(order)
		

		if order.status == "En attente"
			true 
		else
			false
		
		end
	end

	

	def devise_title(controller)
		if controller == "sessions"
			t(:login)
		elsif controller == "registrations"
			t('sign_up')

		elsif controller == "admin_setup"
			t(:admin_setup)
		end
	end

	def application_page_title(controller, action)
		if controller == "home" && action == "index"
			t(:application_home_page)
		end
	end

	def current_organization
	
		organization = current_user.organization
		if organization.present?
			organization
		end
	end

	def get_account(acount_id)
		account = Account.find(user_id)
	end

	def poll_thumbnail(poll)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if poll.cover.attached?
			#image_tag poll.cover.variant(resize: "308x205")
			image_tag poll.cover.variant(combine_options: {resize: "308x205^",  gravity: 'Center', crop: '308x205+0+0' })
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def poll_cover_thumbnail(poll)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if poll.cover.attached?
            image_tag poll.cover.variant(combine_options: {resize: "700x400^",  gravity: 'Center', crop: '700x400+0+0'})
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def poll_item_thumbnail(poll_item)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if poll_item.image.attached?
			#image_tag poll.cover.variant(resize: "308x205")
			image_tag poll_item.image.variant(combine_options: {resize: "308x205^",  gravity: 'Center', crop: '308x205+0+0' })
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end

	def poll_item_cover_thumbnail(poll_item)
		#image = path_to_image('imofy.png')
		#mini_image = MiniMagick::Image.new(image)
        if poll_item.image.attached?
            image_tag poll_item.image.variant(combine_options: {resize: "700x400^",  gravity: 'Center', crop: '700x400+0+0'})
        else
            image_tag 'thumbnails/post-missing.jpg'
        end
	end
	def sidebar_poll_item_thumbnail(poll_item, width)
       
           
        if poll_item.present? && poll_item.image.attached?
            image_tag poll_item.image,  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        else

            image_tag 'thumb/missing.png',  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        end
     
	end
	def opinion_user_thumbnail(opinion, width)
       
           
        if opinion.user.present? && opinion.user.profile.avatar.attached?
            image_tag optinion.user.profile.avatar,  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        else

            image_tag 'thumb/missing.png',  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        end
     
	end
	def voting_user_thumbnail(voting, width)
       
           
        if voting.user.present? && voting.user.profile.avatar.attached?
            image_tag voting.user.profile.avatar,  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        else

            image_tag 'thumb/missing.png',  class: "wd-#{width} ht-#{width} rounded-circle", alt: "Avatar"
        end
     
    end

	def priority(id)
		Priority.find(id)
	end

	def task_status(id)
		TaskStatus.find(id)
	end
	
	def user_notifications
		current_user.recipient_notifications.order(created_at: 'DESC').take(5)
	end

	def imputable_type(imputation)
		if imputation.imputable_type == "ArrivalMail"
			"Réf. courrier: #{ArrivalMail.find(imputation.imputable_id).internal_reference}"
		elsif imputation.imputable_type == "Request"
			"Réf. demande: #{Request.find(imputation.imputable_id).uid}"

		end
	end



	def is_account_locked?(account)
		if account.status == 'enable'
			false
		else
			true
		end
	end

	def configs?
		configs = Config.take

		if configs.present? 
			true
		else
			false
		end
	end

	def smtp_config?
		config = Config.take

		if config.present? && config.smtp_user_name.present? &&  config.smtp_user_password.present? && 
			config.smtp_address.present? && config.smtp_port
		
			true 
		else
			false
		end
	end

	def current?(key, path)
		"#{key}" if current_page? path
		# We use string interpolation "#{key}" here to access the CSS classes we are going to create.
	end

	def commented_for(poll_item)
		comments = poll_item.comments
	end

	def poll_opened(poll_id)
		poll = Poll.find(poll_id)
		if poll.status.present? && poll.status == "En cours"
			true
		else
			false 
		end
	end

	


	




end
