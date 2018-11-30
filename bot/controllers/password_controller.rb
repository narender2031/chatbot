class PasswordsController < BotController

    def generate_password
        update_session_to flow: 'goodbye', state: 'say_goodbye'
        step_to flow: 'goodbye', state: 'say_goodbye'
    end
  
    def enter_password
        send_replies
        update_session_to flow: 'goodbye', state: 'say_goodbye'
        step_to flow: 'goodbye', state: 'say_goodbye'
    end
  
  
  end
  