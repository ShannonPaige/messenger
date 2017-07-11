//= require cable
//= require_self
//= require_tree .

this.App = {};

App.cable = ActionCable.createConsumer();

App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
      newMessage = this.renderMessage(data);
      $('#message-field').val('');
      $('#post-btn').removeAttr('disabled');
      return $('#messages').prepend(newMessage);
  },

  renderMessage: function(data) {
    return "<h3>" + data.body + "</h3><p> Posted by " + data.name + " on " + data.time;
  }
});
