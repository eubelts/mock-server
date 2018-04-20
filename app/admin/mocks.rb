ActiveAdmin.register Mock do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :request_method, :route_path, :status, :response
#
# or
#

 # f.input :authors, :as => :check_boxes, :collection => ["Justin", "Kate", "Amelia", "Gus", "Meg"]
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
