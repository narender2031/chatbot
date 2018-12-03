class BotController < Stealth::Controller

  helper :all

  def route
    handle_payload(current_message.payload)  if current_message.payload.present?
    handle_message if !current_message.payload.present?
  end

  def handle_payload(payload)
    case payload
    when 'Amazon Voucher'
      step_to flow: 'gifts', state: 'amazon_voucher'
    when 'Dinner Coupon'
      step_to flow: 'gifts', state: 'dinner_coupon'
    when 'Secret Sauce'
      step_to flow: 'gifts', state: 'secret_sauce'
    when 'Create Account'
      step_to flow: 'hello', state: 'get_interset'
    when 'password'
      step_to flow: 'hello', state: 'not_interested'
    when 'Login'
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
