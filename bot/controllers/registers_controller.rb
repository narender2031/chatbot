class RegistersController < BotController
    
  def say_thanks
    send_replies
    step_to state: 'ask_name'
  end

  def ask_name
    send_replies
    update_session_to state: 'get_name'
  end

  def get_name
  send_replies
  update_session_to state: 'ask_email'
  step_to state: 'ask_email'
  end

  def ask_email
    send_replies
    update_session_to state: 'get_email'
  end

  def get_email
    send_replies
    update_session_to state: 'ask_password'
    step_to state: 'ask_password'
  end

  def ask_password
    send_replies
    update_session_to state: 'get_password'
  end

  def  get_password
    send_replies
    update_session_to state: 'ask_signup'
    step_to state: 'ask_signup'
  end

  def ask_signup
    send_replies
  end

  def say_welcome
    send_replies
  end


end