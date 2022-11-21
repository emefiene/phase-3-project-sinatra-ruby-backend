class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
    
  get "/patients" do
    patients = Patient.all
    patients.to_json(
    include: {
      reviews: {
        only:[
          :comments, :time, :patient_id
        ]
      }
    }
    )
  
  end

  post "/review/:id/post" do
    review = Review.create(id_params)
    review.to_json
  end
  
  get "/patients/:id" do
    patients = Patient.find(params[:id])
    patients.to_json(
      include: {
        reviews: {
          only:[
            :comments,
            :patient_id
          ]
        }
     }
      )
  end

  

  post "/patients" do
    patients = Patient.create(get_params)
    patients.to_json
  end
  
  
  patch "/patients/:id" do
    patients = Patient.find(params[:id])
    patients.update(get_params)
    patients.to_json
  end
  

  delete "/patients/:id" do
    
    patients = Patient.find(params[:id])
    patients.destroy
  end

   delete "/review/:id" do
    review = Review.find(params[:id])
    review.destroy
  end
   
  private
  def get_params
    {name:params[:name], email:params[:email], address:params[:address], age:params[:age], phone:params[:phone]}
  end
  
   def id_params
    { comments:params[:comments], patient_id:params[:id]}
  end
  
end


