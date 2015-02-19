class ApiController < ApplicationController

  def random
    cat = Cat.api_public.order('RANDOM()').first
    render(json: cat)
  end

  def show
    cat = Cat.api_public.where(id: params[:id]).first
    if cat 
    	render(json: cat)
    else
	    render(json: 'Not Found', status: '404')
	end
#    render(cat ? json: cat : json: 'not found')
#    render(json: cat)
  end

  def index
    cats = Cat.api_public.limit(25)
    render(json: cats)
  end

  def cats_create
	new_cat_info = params.require(:cat).permit(:name, :email, :password)
	cat = Cat.new(new_cat_info)
	status = 200

	if !cat.save
		msg = 'failed...'
		status = 400
	end

	msg = 'success!'

  end

end
