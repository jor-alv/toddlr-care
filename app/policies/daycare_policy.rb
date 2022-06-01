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

  def update?
    user_is_owner_or_admin
  end

  def create?
    user_is_owner_or_admin
  end

  def destroy?
    record.supplier == user || user.admin
  end

  def toggle_favorite?
    true
  end

  private

  def user_is_owner_or_admin
    record.supplier == user || user.admin
  end
end
