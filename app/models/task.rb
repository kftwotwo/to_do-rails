class Task < ActiveRecord::Base
  belongs_to :list
  validates :description, :presence => true
  after_initialize :set_defaults, unless: :persisted?

  # def done_toggle
  #   self.done = !self.done
  # end

  def set_defaults
    self.done = false
  end
end
