class Plugins::GoogleAnalytic::AdminController < Apps::PluginsAdminController

  def settings
    @google_analytic = current_site.get_meta('google_analytic_config')
  end

  def save_settings
    current_site.set_meta('google_analytic_config',
                          {code: params[:google_analytic][:code]
                          })
    flash[:notice] = "#{t('plugin.google_analytic.messages.settings_saved')}"
    redirect_to action: :settings
  end

end
