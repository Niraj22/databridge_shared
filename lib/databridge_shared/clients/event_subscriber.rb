# frozen_string_literal: true

module DataBridgeShared
    module Clients
      class EventSubscriber
        def initialize(broker_config = {})
          @config = broker_config
        end
  
        def subscribe(event_names, handler)
          puts "Subscribing to events: #{event_names} with handler: #{handler}"
        end
      end
    end
  end