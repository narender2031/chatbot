class BotController < Stealth::Controller

  helper :all

  def route
    handle_payload(current_message.payload)  if current_message.payload.present?
    handle_message if !current_message.payload.present?
  end

  def handle_payload(payload)
    case payload
    when 'More Chat :)'
      update_session_to flow: 'hello', state: 'ask_country'
      step_to flow: 'hello', state: 'ask_country'
    when 'Bye'
      update_session_to flow: 'goodbye', state: 'say_goodbye'
      step_to flow: 'goodbye', state: 'say_goodbye'
    else
      update_session_to flow: 'hello', state: 'say_hello'
      step_to flow: 'hello', state: 'say_hello'
    end
  end

  def handle_message
    if current_session.present?
      puts current_message.inspect
      step_to session: current_session
    else
      puts current_message.inspect
      step_to flow: 'hello', state: 'say_hello'
    end
  end

end
