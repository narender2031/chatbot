class GiftsController < BotController

  def amazon_voucher
    send_replies
    update_session_to flow: 'hello', state: 'ask_email'
    step_to flow: 'hello', state: 'ask_email'
  end

  def dinner_coupon
    send_replies
    update_session_to flow: 'hello', state: 'ask_email'
    step_to flow: 'hello', state: 'ask_email'
  end

  def secret_sauce
    send_replies
    update_session_to flow: 'hello', state: 'ask_email'
    step_to flow: 'hello', state: 'ask_email'
  end

end
