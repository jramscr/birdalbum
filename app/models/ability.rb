class Ability
  include CanCan::Ability

  attr_reader :user

  def initialize(user = User.new)
    # Define abilities for the passed in user here. For example:

    if formatted_user_type(user) == "Administrador"
      can :manage, :all
    elsif formatted_user_type(user) == ("Aficionado" || "Ornitólogo")
      can :read, User, user_id: user.id
      can :manage, Bird
    end

    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
