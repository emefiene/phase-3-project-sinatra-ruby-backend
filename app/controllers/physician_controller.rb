class PhysicianController < Sinatra::Base
    set :default_content_type, 'application/json'
  
    get "/physicians" do
        physicians = Physician.all
        physicians.to_json
    end
    
    get "/physicians/:id" do
        physicians = Physician.find(params[:id])
        physicians.to_json
    end
  
    post "/physicians" do
      physicians = Physician.create(get_params)
      physicians.to_json
    end
    
    delete "/physicians/:id" do
      physicians = Physician.find(params[:id])
      physicians.destroy
    end
    
    private
    def get_params
      {image_url:params[:image_url], name:params[:name], specialty:params[:specialty]}
    end
  end
  

  
  