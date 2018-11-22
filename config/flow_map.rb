class FlowMap

  include Stealth::Flow

	flow :test_flow do
		state :ask_example
		state :get_example
		state :say_yes_example
		state :say_no_example
	end


  flow :hello do
    state :say_hello
    state :ask_name 
    state :get_name, fails_to: :ask_name
    state :ask_color
    state :get_color, fails_to: :ask_color
    state :ask_email
    state :get_email, fails_to: :ask_email
    state :say_error
    state :ask_phone
    state :get_phone, fails_to: :ask_phone
    state :phone_error
    state :say_buttons
  end

  flow :goodbye do
    state :say_goodbye
  end

  flow :catch_all do
    state :level1
  end

end
