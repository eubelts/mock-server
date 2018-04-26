ActiveAdmin.register Mock do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :request_method, :route_path, :status, :response

# index do
#   selectable_column
#   column "Title" do |mock|
#     link_to mock.name, admin_mock_path
#   end
# end

index do
  column :name do |mock|
    link_to mock.name
  end
  column :description
  column :request_method
  column :route_path
  column :status
  column :response
end
#
# or
#

form do |f|
  tabs do
    tab 'General' do
      f.inputs 'Basic Details' do
        f.input :name
        f.input :description
        f.input :request_method, :as => :select, :collection => ["GET", "POST", "PUT", "PATCH", "DELETE"]
        f.input :status, :input_html => { :pattern => "^[0-9]+$", :maxlength => 3 }
        f.input :route_path
      end
    end

    tab 'Response' do
      f.inputs 'Response Properties' do
        f.input :response
      end
    end

    tab 'Advanced' do
      f.inputs 'Advanced Details' do
        # f.input :response
      end
    end
  end
  f.actions
end
# f.input :authors, :as => :check_boxes, :collection => ["Justin", "Kate", "Amelia", "Gus", "Meg"]
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
