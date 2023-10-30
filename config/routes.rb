Rails.application.routes.draw do
  get("/", {:controller => "calculator", :action => "home"})
  
  #Square Calculations
  get("/square/new", {:controller => "calculator", :action => "square_new"})
  get("/square/results", {:controller => "calculator", :action => "square_results"})
  
  #Square Root Calculations
  get("/square_root/new", {:controller => "calculator", :action => "sqrt_new"})
  get("/square_root/results", {:controller => "calculator", :action => "sqrt_results"})
  
  #Payment Calculations
  get("/payment/new", {:controller => "calculator", :action => "payment_new"})
  get("/payment/results", {:controller => "calculator", :action => "payment_results"})
  
  #Random Number Generator
  get("/random/new", {:controller => "calculator", :action => "random_new"})
  get("/random/results", {:controller => "calculator", :action => "random_results"})
end
