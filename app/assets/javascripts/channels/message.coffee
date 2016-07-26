App.message = App.cable.subscription.create "MessageChannel",
    connected: -> 
        console.log