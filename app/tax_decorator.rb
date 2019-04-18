class TaxDecorator
  def initialize(tax:, min_salary:)
    @tax = tax
    @min_salary = min_salary
  end

  def value
    tax.min_salary_dependent? ? tax.value * min_salary : tax.value
  end

  private

  attr_reader :tax, :min_salary
end
