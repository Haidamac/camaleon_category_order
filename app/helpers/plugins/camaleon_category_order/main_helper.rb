module Plugins::CamaleonCategoryOrder::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def camaleon_category_order_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def camaleon_category_order_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def camaleon_category_order_on_upgrade(plugin)
  end

  # This adds a javascript to rearrange the elements of any type of content
  def camaleon_category_order_on_list_category(values)

    plugin_meta = get_plugin.get_meta('_reorder_objects')

    if plugin_meta.present?
      plugin_meta[:post_type].each do |meta|
        if meta.to_i == values[:post_type].id.to_i
          append_asset_libraries({reorder: {js: [plugin_asset_path("category_reorder.js")], css: [plugin_asset_path("reorder.css")]}})
          cama_content_append('<script>jQuery(function(){$.fn.reorder({url: "'+admin_plugins_camaleon_category_order_reorder_categories_path+'", table: "#categories-table-list"});});</script>')
        end
      end
    end
  end

end
