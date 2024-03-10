(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer('/cable');

  App.webNotificationsChannel = App.cable.subscriptions.create("WebNotificationsChannel", {
    connected: function() {
      // Called when the subscription is ready for use on the server
      console.log("Connected to WebNotificationsChannel");
    },

    disconnected: function() {
      // Called when the subscription has been terminated by the server
      console.log("Disconnected from WebNotificationsChannel");
    },

    received(data) {
      console.log("IN received")
      // Update this part to display the received message in your HTML
      console.log("Received:", data.message);

      // Append notification to notification list div
      $('.notification-list').append("<h1>" + data.message + "</h1>");
      
      // Clear the input
      $('#notification_input').val('');
    }, 
    receive: function(message) {
      console.log("IN speaK")
      // Called to send a message to the server
      this.perform("speak", { message });
    },
  });
}).call(this);
