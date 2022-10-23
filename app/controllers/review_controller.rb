class ReviewController < Sinatra::Base
   
    set :default_content_type, 'application/json'
  get "/review" do
    review = Review.all
    review.to_json
  end

  get "/review/:patient_id" do
    review = Review.find_by_patient_id(params[:patient_id])
    review.to_json
  end

  post "/review/:id/post" do
    review = Review.create(id_params)
    review.to_json
  end
    
  delete "/review/:id" do
    review = Review.find(params[:id])
    review.destroy
  end


  def get_params
    {comments:params[:comments], time:params[:time], patient_id:params[:patient_id]}
  end
  
  def id_params
    {time:params[:time], comments:params[:comments], patient_id:params[:id]}
  end
 
end

