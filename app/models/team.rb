class Team

  attr_reader :name, :motto

  def initialize(hashish={})
    @name = hashish[:name]
    @motto = hashish[:motto]
  end





end
