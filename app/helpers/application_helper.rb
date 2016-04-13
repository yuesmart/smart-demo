module ApplicationHelper
  def active_by_controller c
    controller_name == c.to_s ? 'active' : ''
  end
end
