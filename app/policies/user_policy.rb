class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def edit?
    true
  end

  def destroy?
    true
  end

  private

  def user_is_owner_or_admin
    record.user == user || user.admin
  end

end
