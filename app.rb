require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/contacts')

get('/') do
  @info = Contact.order()
  erb(:input)
end

post('/') do
  first_name = params["name"]
  last_name = params["lastname"]
  job_title = params["jobtitle"]
  company = params["company"]
  address = params["address"]
  item = Contact.new(first_name, last_name, job_title, company, address )
#
#   if (item.validate?)
#     item.save()
#   end
#   if (item.update?)
#     item.update()
#   end
#   @info = Contact.order()
#   erb(:input)
# end
#
# get('/items/:id') do
#   @info = Contact.find(params[:id])
#   erb(:output)
# end

  get('/') do
    @description = "This will take input from user"
  end
end
