class PathPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    # authorize if the user takes this path (i.e. if there are step progresses)
    record.step_progresses.where(user_id: user.id)
  end
end
