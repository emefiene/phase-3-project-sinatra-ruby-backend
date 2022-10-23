class AppointmentController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add your routes here
    get "/appointment" do
       Appointment.all.to_json(
         include: {
           patient: {
             only: [
               :name, :address
              ]
           },
           physician: {
             only: [
               :name, :specialty
              ]
           }
         }
        )    
    end
    
    get "/appointment/:id" do
        appointment = Appointment.find(params[:id])
        appointment.to_json
    end
  
  
    post "/appointment" do
      appointment = Appointment.create(get_params)
      appointment.to_json
    end
  
    patch "/appointment/:id" do
      appointment = Appointment.find(params[:id])
      appointment.update(get_params)
      appointment.to_json
    end
    
    delete "/appointment/:id" do
      appointment = Appointment.find(params[:id])
      appointment.destroy
    end
  
    def get_params
      {image_url:params[:image_url], name:params[:name], specialty:params[:specialty], phone:params[:phone]}
    end
    
end