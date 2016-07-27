class MessageChannel < ApplicationCable::Channel
    def subscribed
        
    end
    
    def follow(data)
        stream_from "room:#{data['room_id'].to_i}:messages"
    end
    
    def unfollow
        stop_all_streams
    end
end