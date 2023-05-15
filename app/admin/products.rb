ActiveAdmin.register Product do
  permit_params :pr_name, :price_for_client, :description, :SKUN, :quantity, :pr_volume_id, :pr_alcohol_id, :pr_endurance_id, :pr_category_id, :pr_sub_category_id, :pr_brand_id, :pr_country_id, :pr_color_id, :pr_sweetness_id, :images => []

  index do
    id_column
    column :pr_name
    column :price_for_client
    column :SKUN
    column :quantity
    column :pr_category
    column :pr_sub_category

    column "" do |resource|
      links = ''.html_safe
      links += link_to I18n.t('active_admin.view'), resource_path(resource), class: "member_link show_link"
      links += link_to I18n.t('active_admin.edit'), edit_resource_path(resource), class: "member_link edit_link"
      links += link_to I18n.t('active_admin.delete'), resource_path(resource), method: :delete, confirm: I18n.t('active_admin.delete_confirmation'), class: "member_link delete_link"

      links
    end
  end

  show do
    attributes_table do
      row :pr_name
      row :price_for_client
      row :description, as: :text
      row :SKUN
      row :quantity
      row :pr_volume
      row :pr_alcohol
      row :pr_endurance
      row :pr_category
      row :pr_sub_category
      row :pr_brand
      row :pr_country
      row :pr_color
      row :pr_sweetness
      row :images do
        div do
          product.images.each do |img|
            div do
              image_tag url_for(img), size: "50x70"
            end
          end
        end
      end
    end
  end

  form html: { multipart: true } do |f|
    f.object.quantity = 0
    f.inputs "Product" do
      f.input :pr_name
      f.input :price_for_client
      f.input :description, as: :text
      f.input :SKUN
      f.input :quantity
      f.input :pr_volume_id, as: :select, :collection => PrVolume.all
      f.input :pr_alcohol_id, as: :select, :collection => PrAlcohol.all
      f.input :pr_endurance_id, as: :select, :collection => PrEndurance.all
      f.input :pr_category_id, as: :select, :collection => PrCategory.all
      f.input :pr_sub_category_id, as: :searchable_select, :collection => PrSubCategory.all
      f.input :pr_brand_id, as: :searchable_select, :collection => PrBrand.all
      f.input :pr_country_id, as: :select, :collection => PrCountry.all
      f.input :pr_color_id, as: :select, :collection => PrColor.all
      f.input :pr_sweetness_id, as: :select, :collection => PrSweetness.all
      f.input :images, as: :file, input_html: { multiple: true }
    end

    f.actions
  end

end
