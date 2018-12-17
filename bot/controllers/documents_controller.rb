class DocumentsController < BotController
  
  def say_hello
    send_replies
    step_to  state: 'ask_pan_number'
  end

  def ask_pan_number
    send_replies
    update_session_to state: 'get_pan_number'
  end

  def get_pan_number
    send_replies
  end

end