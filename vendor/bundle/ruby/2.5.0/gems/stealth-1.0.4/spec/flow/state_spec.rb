# coding: utf-8
# frozen_string_literal: true

require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Stealth::Flow::State do

  class SuperFlowMap
    include Stealth::Flow

    flow :new_todo do
      state :new
      state :get_due_date
      state :created, fails_to: :new
      state :error
    end
  end

  let(:flow_map) { SuperFlowMap.new }

  describe "flow states" do
    it "should convert itself to a string" do
      expect(flow_map.current_state.to_s).to be_a(String)
    end

    it "should convert itself to a symbol" do
      expect(flow_map.current_state.to_sym).to be_a(Symbol)
    end
  end

  describe "fails_to" do
    it "should be nil for a state that has not specified a fails_to" do
      expect(flow_map.current_state.fails_to).to be_nil
    end

    it "should return the fail_state if a fails_to was specified" do
      flow_map.init(flow: :new_todo, state: :created)
      expect(flow_map.current_state.fails_to).to be_a(Stealth::Flow::State)
      expect(flow_map.current_state.fails_to).to eq :new
    end
  end

  describe "state incrementing and decrementing" do
    it "should increment the state" do
      flow_map.init(flow: :new_todo, state: :get_due_date)
      new_state = flow_map.current_state + 1.state
      expect(new_state).to eq(:created)
    end

    it "should decrement the state" do
      flow_map.init(flow: :new_todo, state: :error)
      new_state = flow_map.current_state - 2.states
      expect(new_state).to eq(:get_due_date)
    end

    it "should return the first state if the decrement is out of bounds" do
      flow_map.init(flow: :new_todo, state: :get_due_date)
      new_state = flow_map.current_state - 5.states
      expect(new_state).to eq(:new)
    end

    it "should return the last state if the increment is out of bounds" do
      flow_map.init(flow: :new_todo, state: :created)
      new_state = flow_map.current_state + 5.states
      expect(new_state).to eq(:error)
    end
  end

end
