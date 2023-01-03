class Museum
  attr_reader :name, :exhibits

  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits.push(exhibit)
  end

  def recommend_exhibits(patron)
    recommended_exhibits = []
    patron.interests.map do |interest|
      @exhibits.each do |exhibit|
        if interest == exhibit.name
          recommended_exhibits.unshift(exhibit)
        end
      end
    end
    recommended_exhibits
  end

end