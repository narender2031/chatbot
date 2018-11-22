class HellosController < BotController

  def say_hello
    send_replies
    puts "Hello"
    puts current_message
    step_to state: 'ask_name'
  end

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
    send_replies
    step_to state: 'ask_color'
  end

  def ask_color
    send_replies
    update_session_to state: 'get_color'
  end

  def get_color
    send_replies
    step_to state: 'ask_email'
  end

  def ask_email
    send_replies
    update_session_to state: 'get_email'
  end

  def get_email
    if current_message.message.include?('@')
      send_replies
      update_session_to state: 'ask_phone'
      step_to state: 'ask_phone'
    else
      step_to state: 'say_error'
    end
  end

  def say_error
    send_replies 
    step_to state: 'ask_email'
  end


  def ask_phone
    send_replies
    update_session_to state: 'get_phone'
  end

  def get_phone
    if current_message.message.length == 10
      send_replies
      update_session_to state: 'say_buttons'
      step_to state: 'say_buttons'
    else
      step_to state: 'phone_error'
    end
  end


  def phone_error
    send_replies
    update_session_to state: 'ask_phone'
    step_to state: 'ask_phone'
  end

  def say_buttons
    puts "------------"
    puts current_message
    puts "------------"
    send_replies
  end

end
