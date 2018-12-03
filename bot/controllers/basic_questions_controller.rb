class BasicQuestionsController < BotController

  def say_welcome
    send_replies
    step_to state: 'ask_work_status'
  end

  def ask_work_status
    send_replies
  end

  def not_eligibility
    send_replies
  end

  def ask_annual_income
    send_replies
  end

  def dependant
    send_replies
  end

  def eligibile
    send_replies
  end
end