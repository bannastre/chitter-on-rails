class Message < ApplicationRecord

  def peep_time
    created_at.getlocal.to_formatted_s(:short)
  end
end
