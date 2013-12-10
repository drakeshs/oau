=begin
Copyright (C) 2012 Claudio Carotenuto
Copying, distribution or use of the information contained herein, including any reliance thereon, is STRICTLY PROHIBITED. 
=end
module OmniAuth
  module Strategies
    class Innovahub < OmniAuth::Strategies::OAuth2

      CUSTOM_PROVIDER_URL = 'http://oauth.innovahub.com' if Rails.env.production?
      CUSTOM_PROVIDER_URL = 'http://oauth.staging.innovahub.com' if Rails.env.staging?
      CUSTOM_PROVIDER_URL = 'http://localhost:3000' if Rails.env.development?

      option :client_options, {
        :site => CUSTOM_PROVIDER_URL,
        :authorize_url => "#{CUSTOM_PROVIDER_URL}/auth/innovahub/authorize",
        :access_token_url => "#{CUSTOM_PROVIDER_URL}/auth/innovahub/access_token"
      }

      uid { raw_info['id'] }

      info do
        {
          :email => raw_info['email']
        }
      end

      extra do
        {
          :first_name => raw_info['extra']['first_name'],
          :last_name => raw_info['extra']['last_name']
        }
      end

      def raw_info
        @raw_info ||= access_token.get("/auth/innovahub/user.json?oauth_token=#{access_token.token}").parsed
      end
    end
  end
end