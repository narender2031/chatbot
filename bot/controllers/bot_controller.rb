class BotController < Stealth::Controller

  helper :all
  # check the session in route controller
  # check type of bot you want to chat => devide the flow you wnat to connect 
  # problem are following: 
  # 1. remember user name, email and basic details.
  # 2. create the bot conversation model this model is specific bot chat conversation.
  # 3. store the basic information like user_id, conversation_id, bot_type, bot_name
  # 4. conversations model => 
  # 5. current state=> reply, conversation_ids.
  # 6. 



  # solutions
  # check the session
  # 1. get the bot type 
  # 2. get the information about the bot
  # 1. pass the bot info to get the bot specific method.
  # 2. pass the method to specific bot
  # 3. then pass to method specific bot
  # 4. then pass to their bot paylod handle or pass to the stealth message handler
  # 5. 

  def route
    puts current_message.inspect
    bot_type = get_bot_type(current_message)
    get_current_bot(bot_type, current_message)
  end

  

  def get_bot_type(current_message)
    return current_message.referral
  end

  def get_current_bot(type, current_message)
    register_bot(current_message) if type == 'registeration_bot'
    document_bot(current_message) if type == 'document_bot'
  end

  def register_bot(current_message)
    handle_register_payload(current_message.payload) if current_message.payload.present?
    handle_registerion_message() if !current_message.payload.present?
  end

  def document_bot(current_message)
    handle_document_payload(current_message.payload) if current_message.payload.present?
    handle_document_message() if !current_message.payload.present?
  end

  def handle_document_message()
    handle_session
  end

  def handle_document_payload(payload)
    case payload
    when 'yes'
      step_to flow: 'document', state: 'say_hello'
    else
      update_session_to flow: 'document', state: 'say_hello'
      step_to flow: 'document', state: 'say_hello'
    end
  end

  def handle_registerion_message
    handle_session
  end


  def handle_session
    if current_session.present?
      step_to session: current_session
    else
      step_to flow: 'hello', state: 'say_hello'
    end
  end

  def handle_register_payload(payload)
    puts "Hello payload"
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
end
