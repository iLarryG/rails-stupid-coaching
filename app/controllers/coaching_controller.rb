class CoachingController < ApplicationController
  def answer
    @message = params[:message]
    @answer = coach_answer_enhanced(@message)
  end

  def ask
    
  end
end

def coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
  if your_message == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif your_message.upcase == your_message
    return "I can feel your motivation! #{coach_answer(your_message)}"
  else
    return coach_answer(your_message)
  end
end


def coach_answer(your_message)
  # TODO: return coach answer to your_message
  if your_message == "I am going to work right now!"
    return ""
  elsif your_message.include?("?")
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end