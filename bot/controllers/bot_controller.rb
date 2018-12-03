class BotController < Stealth::Controller

  helper :all

  def route
    handle_payload(current_message.payload)  if current_message.payload.present?
    handle_message if !current_message.payload.present?
  end

  def handle_payload(payload)
    puts current_message.payload

    case payload
    when 'Yes'
      update_session_to flow: 'basic_questions', state: 'say_welcome'
      step_to flow: 'basic_questions', state: 'say_welcome'
    when 'Delete'
      update_session_to flow: 'goodbye', state: 'user_not_agree'
      step_to flow: 'goodbye', state: 'user_not_agree'
    when 'Working'
      update_session_to flow: 'basic_questions', state: 'ask_annual_income'
      step_to flow: 'basic_questions', state: 'ask_annual_income'
    when 'No-Work'
      update_session_to flow: 'basic_questions', state: 'not_eligibility'
      step_to flow: 'basic_questions', state: 'not_eligibility'
    when 'Eligible'
      update_session_to flow: 'basic_questions', state: 'dependant'
      step_to flow: 'basic_questions', state: 'dependant'
    when 'complete_basic'
      update_session_to flow: 'basic_questions', state: 'eligibile'
      step_to flow: 'basic_questions', state: 'eligibile'
    when 'ready_to_register'
      update_session_to flow: 'register', state: 'say_thanks'
      step_to flow: 'register', state: 'say_thanks'
    when 'SignUp'
      update_session_to flow: 'register', state: 'say_welcome'
      step_to flow: 'register', state: 'say_welcome'
    when 'cancel_account'
      update_session_to flow: 'register', state: 'say_welcome'
      step_to flow: 'register', state: 'say_welcome'
    when 'say_bie'
      update_session_to flow: 'goodbye', state: 'say_thanks'
      step_to flow: 'goodbye', state: 'say_thanks'
    else
      update_session_to flow: 'hello', state: 'say_hello'
      step_to flow: 'hello', state: 'say_hello'
    end
  end

  def handle_message
    if current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end

end
