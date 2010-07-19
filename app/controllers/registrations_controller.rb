class RegistrationsController < Devise::RegistrationsController
  helper_method :form_presenter


  def form_presenter
    @presenter = RegistrationFormPresenter.new(resource)
  end


end
