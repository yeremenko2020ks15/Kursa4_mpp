ActiveAdmin.register PrColor do
  permit_params :color

  form do |f|
    inputs 'Product Color' do
      f.input :color, as: :string
    end

    f.actions
  end
end
