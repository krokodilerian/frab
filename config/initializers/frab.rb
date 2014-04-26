ActionMailer::Base.default_url_options = { host: Settings.host, protocol: Settings.protocol }
if Settings['smtp_settings']
  smtp_settings = Hash.new
  Settings.smtp_settings.each {|k, v| smtp_settings[k.to_sym] = v }
  ActionMailer::Base.smtp_settings = smtp_settings
end

if Settings['delivery_method']
  ActionMailer::Base.delivery_method = Settings['delivery_method']
end
