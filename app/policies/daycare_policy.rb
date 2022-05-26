class DaycarePolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    true
  end

  def create?
    user_is_owner_or_admin
  end

  private

  def user_is_owner_or_admin
    record.supplier == user || user.admin
  end
end
