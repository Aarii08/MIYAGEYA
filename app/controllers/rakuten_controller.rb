class RakutenController < ApplicationController

  def index
    # ======================= 楽天商品検索 ======================================
    RakutenWebService.configure do |c|
      c.application_id = ENV['RAKUTEN_APPLICATION_ID']
      c.debug = true # default: falseになっている。
    end
    if params[:keyword]
      @items = RakutenWebService::Ichiba::Item.search(keyword: params[:keyword])
    end
    # ===========================================================================
    @prefectures = Prefecture.all
  end
end
