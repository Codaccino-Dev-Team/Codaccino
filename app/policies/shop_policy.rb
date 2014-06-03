class ShopPolicy < Struct.new :user, :shop

  def index?
    return true
  end

  def sort_wifi_up?
    return true
  end

  def sort_wifi_down?
    return true
  end

  def sort_noise?
    return true
  end

  def sort_power?
    return true
  end

  def new?
    admin?
  end

  def edit?
    admin?
  end

  def create?
    admin?
  end

  def update?
    admin?
  end

  def destroy?
    admin?
  end

  private

  def user?
    user && user.user?
  end

  def admin?
    user && user.admin?
  end
end
