class Plugins::CamaleonCategoryOrder::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::CamaleonCategoryOrder::MainHelper
  def index
  end

  def reorder_categories
    if params[:values].present?
      params[:values].each_with_index do |value,index |
        current_site.the_category(value.to_i).update_column("term_order", index)
      end
    end

    render inline: "correct"
  end

  # show settings form
  def settings
  end

  # save values from settings form
  def save_settings
    @plugin.set_options(params[:options]) if params[:options].present? # save option values
    @plugin.set_metas(params[:metas]) if params[:metas].present? # save meta values
    @plugin.set_field_values(params[:field_options]) if params[:field_options].present? # save custom field values
    redirect_to url_for(action: :settings), notice: 'Settings Saved Successfully'
  end
  # add custom methods below ....
end
