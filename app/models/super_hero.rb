class SuperHero
  attr_reader :name, :power, :bio

  @@all = []

  def initialize(params)
    @name = params[:name]
    @power = power[:power]
    @bio = params[:bio]
    @@all << self
  end

  def save
    self.class.all << self
  end

  def self.all
    @@all
  end
end
