class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def index?
    user.admin? || record.request.user == user || record.request.event.user == user
  end

  def show?
    true
    # user.admin? || record.user == user
  end

  def create?
    true
  end
end
