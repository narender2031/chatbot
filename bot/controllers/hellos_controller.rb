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
      update_session_to state: 'ask_for_registeration'
      step_to state: 'ask_for_registeration'
    else
      step_to state: 'say_invalid_email'
    end
  end

  def say_invalid_email
    send_replies
    update_session_to state: 'ask_email'
    step_to state: 'ask_email'
  end

  def ask_for_registeration
    send_replies
  end

  def get_interset
    update_session_to flow: 'goodbye', state: 'say_thanks'
    step_to flow: 'goodbye', state: 'say_thanks'
  end

  def not_interested
    update_session_to  state: 'ask_password'
    step_to  state: 'ask_password'
  end


  def ask_password
    send_replies
    update_session_to  state: 'get_password'
    step_to  state: 'get_password'
  end

  def get_password
    send_replies
    # step_to flow: 'goodbye', state: 'say_thanks'
  end
end
