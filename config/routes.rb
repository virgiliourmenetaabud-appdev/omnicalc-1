Rails.application.routes.draw do
  get("/square/new", { :controller => "application", :action => "blank_square_form"})

  get("/square/result", { :controller => "application", :action => "calculate_square_result"})
end
