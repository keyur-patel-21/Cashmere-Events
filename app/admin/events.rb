ActiveAdmin.register Event do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :poster, :genre, :artist, :description, :frequency, :platform, :venue, :city, :date, :time, :ticket_price
  #
  # or
  #
  # permit_params do
  #   permitted = [:name, :poster, :genre, :artist, :description, :frequency, :platform, :venue, :city, :date, :time, :ticket_price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  form do |f|
    f.inputs do
      f.file_field :poster
    puts("")
      f.label :name
      f.text_field :name
  end
  f.actions
end
  
end
