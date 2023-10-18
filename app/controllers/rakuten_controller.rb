class RakutenController < ApplicationController

  def index
    RakutenWebService.configure do |c|
      c.application_id = ENV['RAKUTEN_APPLICATION_ID']
      c.debug = true # default: falseになっている。
    end
    @items = RakutenWebService::Ichiba::Item.search(keyword: '東京ばな奈')

    # 画像の URL を取得
  # @items.each do |item|

    # if(item.params["mediumImageUrls"].nil?)
    # item.image_url = '';
    # else
      # item.image_url = item.params["mediumImageUrls"][0]
    # end
    # end


  end
end
