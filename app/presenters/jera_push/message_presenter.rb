class JeraPush::MessagePresenter < BasePresenter
	include ActionView::Helpers::UrlHelper

	def display_content
		"\{ title: \'#{item.content["title"]}\' , body: \'#{item.content["body"]}\' \}".html_safe
	end

	def display_created_at
		item.created_at.strftime('%d/%m/%Y %H:%M')
	end

	def show_link
		link_to(
			I18n.t('jera_push.admin.buttons.details'),
			Rails.application.routes.url_helpers.jera_push_admin_message_path(item), class: 'waves-effect waves-light btn'
		)
	end

end