class EventPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    true
  end

  def show?
    true
    # user.admin? || record.user == user
  end

  def create?
    true
  end

end
