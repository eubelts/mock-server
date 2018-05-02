ActiveAdmin.register Mock do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :id, :name, :description, :request_method, :route_path, :status, :response

# index do
#   selectable_column
#   column "Title" do |mock|
#     link_to mock.name, admin_mock_path
#   end
# end

index do
  column :id
  column :name
  column :description
  column :request_method
  column :route_path
  # column :route_path do
    # link_to mock.route_path
     # , render json: mock.response.to_json
  #
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
        f.actions
      end
    end

    tab 'Response' do
      f.inputs 'Response Properties' do
        f.input :response, as: :text, input_html: { class: 'jsoneditor-target' }
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
