require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
  erb(:new_square_calc)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 1 / 2

  erb(:square_root_results)
end

get("/payment/new") do
  erb(:new_payment_calc)
end

get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f
  
  @the_years = params.fetch("user_years").to_f
  @the_principal = params.fetch("user_pv").to_f

  @the_result = ((@the_apr/100)*@the_principal)/(1-(1+(@the_apr/100))**(-@the_years/12))

  erb(:payment_results)
end
