class FlowMap

  include Stealth::Flow

  # flow :test_flow do
  #   state :ask_example
  #   state :get_example
  #   state :say_yes_example
  #   state :say_no_example
  # end

  flow :gifts do
    state :amazon_voucher
    state :dinner_coupon
    state :secret_sauce
  end

  flow :hello do
    state :say_hello
  end

  flow :basic_questions do
    state :say_welcome
    state :ask_work_status
    state :not_eligibility
    state :ask_annual_income
    state :dependant
    state :eligibile
  end

  flow :goodbye do
    state :say_thanks
    state :say_come_again
  end

  flow :register do 
    state :say_thanks
    state :ask_name
    state :get_name, fails_to: :ask_name
    state :ask_email
    state :get_email, fails_to: :ask_email
    state :ask_password
    state :get_password, fails_to: :ask_password
    state :ask_signup
    state :say_welcome
  end

  flow :catch_all do
    state :level1
  end

end
