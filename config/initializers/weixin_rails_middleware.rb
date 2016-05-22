# encoding: utf-8
# Use this hook to configure WeixinRailsMiddleware bahaviors.
WeixinRailsMiddleware.configure do |config|

  ## NOTE:
  ## If you config all them, it will use `weixin_token_string` default

  ## Config public_account_class if you SAVE public_account into database ##
  # Th first configure is fit for your weixin public_account is saved in database.
  # +public_account_class+ The class name that to save your public_account
   config.public_account_class = "PublicAccount"

  ## Here configure is for you DON'T WANT TO SAVE your public account into database ##
  # Or the other configure is fit for only one weixin public_account
  # If you config `weixin_token_string`, so it will directly use it
  # config.weixin_token_string = 'd2cfe8e167e429eae85674d5'
  # using to weixin server url to validate the token can be trusted.
  # config.weixin_secret_string = 'f3GNI3BlijLhENcqSvbo20XZ2cJ6NMId'
  # 加密配置，如果需要加密，配置以下参数
  # config.encoding_aes_key = '2b5bfac0b16cc4eb252026ac530a07482ffb2025a9a'
  # config.app_id = "your app id"

  ## You can custom your adapter to validate your weixin account ##
  # Wiki https://github.com/lanrion/weixin_rails_middleware/wiki/Custom-Adapter
  # config.custom_adapter = "MyCustomAdapter"

end