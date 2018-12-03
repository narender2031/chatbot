class GoodbyesController < BotController

  def say_thanks
    # non agree user
    send_replies
  end

  def say_come_again
    send_replies
  end

  def user_not_agree
    send_replies
  end
end
