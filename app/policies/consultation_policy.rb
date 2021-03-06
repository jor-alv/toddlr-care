class ConsultationPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def update?
    user_is_owner_or_admin
  end

  def create?
    true
  end

  private

  def user_is_owner_or_admin
    record.daycare.supplier == user || record.client
  end
end
