class HellosController < BotController

  def say_hello
    send_replies
    step_to state: 'ask_name'
  end

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
    send_replies
    update_session_to state: 'ask_gifts'
    step_to state: 'ask_gifts'
  end

  def ask_gifts
    send_replies
    # update_session_to state: 'get_gifts'
  end


  def ask_email
    send_replies
    update_session_to state: 'get_email'
  end

  def get_email
    if current_message.message.include?('@')
      send_replies
      update_session_to flow: 'goodbye', state: 'say_goodbye'
      step_to flow: 'goodbye', state: 'say_goodbye'
    else
      step_to state: 'say_invalid_email'
    end
  end

  def say_invalid_email
    send_replies
    update_session_to state: 'ask_email'
    step_to state: 'ask_email'
  end

  # def ask_color
  #   send_replies
  #   update_session_to state: 'get_color'
  # end

  # def get_color
  #   send_replies
  #   step_to state: 'ask_email'
  # end


  # def ask_phone
  #   send_replies
  #   update_session_to state: 'get_phone'
  # end

  # def get_phone
  #   if current_message.message.length == 10
  #     send_replies
  #     update_session_to state: "say_button"
  #     step_to state: "say_button"
  #   else
  #     step_to state: 'phone_error'
  #   end
  # end


  # def phone_error
  #   send_replies
  #   update_session_to state: 'ask_phone'
  #   step_to state: 'ask_phone'
  # end

  # def say_button
  #   send_replies

  # end


  # def ask_country
  #   send_replies
  #   update_session_to state: 'get_country'
  # end

  # def get_country
  #   send_replies
  # end
end
