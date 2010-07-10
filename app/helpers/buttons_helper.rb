module ButtonsHelper

  def delete_button_for(form_params={})
    render :partial => 'shared/delete_button', :locals => { :form_params => form_params }
  end
end
