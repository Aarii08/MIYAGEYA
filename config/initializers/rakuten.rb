RakutenWebService.configure do |c|
    c.application_id = ENV['RAKUTEN_APPLICATION_ID']
    c.debug = true # default: falseになっている。
  end