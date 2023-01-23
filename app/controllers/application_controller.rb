class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square_result
    @num = params.fetch("user_num").to_f
    @sq_of_num = @num ** 2

    render({ :template => "calculation_templates/square_result.html.erb"})
  end

  def blank_sqrt_form
    render({ :template => "calculation_templates/sqrt_form.html.erb"})
  end

  def calculate_sqrt_result
    @num2 = params.fetch("user_num2").to_f
    @sqrt_of_num2 = Math.sqrt(@num2)
    render({ :template => "calculation_templates/sqrt_result.html.erb"})
  end

  def blank_payment_form
    render({ :template => "calculation_templates/payment_form.html.erb"})
  end

  def calculate_payment_result
    @apr = ((params.fetch("user_apr").to_f)/100).round(5)
    @yrs = params.fetch("user_num_yrs").to_f.round
    @months = @yrs * 12
    @principal = params.fetch("user_principal").to_f
    @payment_num = (@apr/12)*@principal
    @payment_den = (1 - (1+@apr/12)**(@months*(-1)))
    @payment = @payment_num / @payment_den
    @payment_display = @payment.to_s(:currency)

    render({ :template => "calculation_templates/payment_results.html.erb"})
  end

  def blank_random_form
    render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def calculate_random_result
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    render({ :template => "calculation_templates/random_result.html.erb"})
  end
end
