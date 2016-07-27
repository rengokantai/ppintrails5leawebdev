App.message = App.cable.subscription.create "MessageChannel",
    connected: -> 
        @streamCurrentMessage()
    connection: ->
        $("data-channel='rooms']")
    streamCurrentMessage: ->
    if roomId = @collection().data('room-id')
        @perform 'follow',room_id:roomId
    else
        @perform 'unfollow'