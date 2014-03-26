ActiveAdmin.register Skill do


  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
<<<<<<< .merge_file_QZttXX


      def view
        Skill.where(id: params[:id]).first!
      end
    
   
=======
 
  permit_params :title, :user_id
 
>>>>>>> .merge_file_BwrDPR
end
