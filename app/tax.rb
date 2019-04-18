class Tax
  TYPES = {
    income_dependant: :income_dependant,
    min_salary_dependent: :min_salary_dependent,
    value_based: :value_based
  }.freeze

  def initialize(name:, type:, value:, description:)
    @name = name
    @type = type
    @value = value
    @description = description
  end

  def income_dependant?
    type == TYPES.fetch(:income_dependant)
  end

  def min_salary_dependent?
    type == TYPES.fetch(:min_salary_dependent)
  end

  def value_based?
    type == TYPES.fetch(:value_based)
  end

  private

  attr_reader :name, :type, :value, :description
end
