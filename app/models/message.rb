class Message < ActiveRecord::Base
  belongs_to :user
  belongs_to :room
  after_commit {MessageRelayJob.perform_later(self)}
end
