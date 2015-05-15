class SearchController < ApplicationController
  def new
  	#pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')
  	 # 	redirect_back_or pg

  end
  def create
  	@pg = []
  	@pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')
  	#redirect_back_or user
  	#render 'page/new'
  end
  def show
  	#@pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')

  end
  def index
  		
  		#@pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')

  end
   # 	@pg=User.joins(:microposts).select(:name,).where('microposts.bname LIKE ?','%[:search][:key]')

end
