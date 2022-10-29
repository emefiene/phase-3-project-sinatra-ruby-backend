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
    
    # get "/appointment/:patient_id" do
    #   appointment = Appointment.find_by_patient_id(params[:patient_id])
    #   appointment.to_json
    # end

    # post "/appointment" do
    #   appointment = Appointment.create(get_params)
    #   appointment.to_json
    # end
    
    post "/appointment/:id/schedule" do
      appointment = Appointment.create(id_params)
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
    
    private
    def id_params
      {time:params[:time], patient_id:params[:id], date:params[:date], physician_id:params[:id]}
    end

    def get_params
      {image_url:params[:image_url], name:params[:name], specialty:params[:specialty], phone:params[:phone]}
    end
    
end