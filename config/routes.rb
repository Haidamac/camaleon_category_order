Rails.application.routes.draw do

    scope PluginRoutes.system_info["relative_url_root"] do
      #Admin Panel
      scope :admin, as: 'admin', path: PluginRoutes.system_info['admin_path_name'] do
        namespace 'plugins' do
          namespace 'camaleon_category_order' do
            controller :admin do
              post 'reorder_categories' => "admin#reorder_categories"
              get :settings
              post :save_settings
            end
          end
        end
      end
    end
  end
