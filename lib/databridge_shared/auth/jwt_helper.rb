# frozen_string_literal: true

require 'jwt'

module DataBridgeShared
  module Auth
    class JwtHelper
      def self.encode(payload, secret, algorithm = 'HS256')
        JWT.encode(payload, secret, algorithm)
      end

      def self.decode(token, secret, algorithm = 'HS256')
        JWT.decode(token, secret, true, { algorithm: algorithm })
      rescue JWT::DecodeError => e
        nil
      end
    end
  end
end