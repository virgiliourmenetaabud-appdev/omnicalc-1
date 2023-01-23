class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square_result
    @num = params.fetch("user_num").to_f
    @sq_of_num = @num ** 2

    render({ :template => "calculation_templates/square_result.html.erb"})
  end
end
