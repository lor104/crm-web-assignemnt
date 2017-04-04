# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.
require_relative 'contact'
require 'sinatra'

# lauren = Contact.create('Lauren', 'Rosentzveig', 'lauren.rosentzveig@gmail.com', 'winning at life')
# shawn = Contact.create('Shawn', 'Verge', 'shawn.verge@sympatico.ca', 'Every day, becomes more awesome than the next')

get '/' do
  @crm_app_name = "Lauren's CRM"
  erb :index
end

get '/contacts' do
  erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end

post '/contacts' do
  Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
  redirect to('/contacts')
end
