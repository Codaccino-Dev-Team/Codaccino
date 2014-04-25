ShopPolicy = Struct.new(:user, :shop) do
  self::Scope = Struct.new(:user, :scope) do
  def visitor?
    if user? or admin?
      return false
    else
      return true
    end
  end
  def user?
    return false if user.nil?
    return true if user.role == "user"
  end
  def admin?
    return false if user.nil?
    return true if user.role == "admin"
  end
end
