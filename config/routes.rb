Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_form"})

  get("/square/result", { :controller => "application", :action => "calculate_square_result"})

  get("/square_root/new", { :controller => "application", :action => "blank_sqrt_form"})

  get("/sqrt/result", { :controller => "application", :action => "calculate_sqrt_result"})

  get("/payment/new", { :controller => "application", :action => "blank_payment_form"})

  get("/payment/result", { :controller => "application", :action => "calculate_payment_result"})

  get("/random/new", { :controller => "application", :action => "blank_random_form"})

  get("/random/result", { :controller => "application", :action => "calculate_random_result"})

end
