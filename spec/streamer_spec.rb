require 'rails_helper'
require 'elevator_media/streamer.rb'

describe ElevatorMedia::Streamer, :type => :feature do
    describe "Streamer initialize and called" do
        specify "Streamer can be initialize" do
          streamer = ElevatorMedia::Streamer.new
          expect(streamer).to be_a(ElevatorMedia::Streamer)
        end
    end
    describe "test " do
        specify "test to be called" do
            streamer = ElevatorMedia::Streamer.new
            expect(ElevatorMedia::Streamer.test).to eq("You got a joke for me?")
        end
    end
    #How to get the time
    describe "getContent" do
        context "Gives the time" do
            it "returns the time as a string" do
                expect(ElevatorMedia::Streamer.getContent).to be_kind_of String
            end
          end
    end
end