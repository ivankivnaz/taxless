class TaxCalculator
  def initialize(income:, taxes:)
    @income = income
    @taxes = taxes
  end

  def self.call(*args)
    new(*args).call
  end

  def call
    taxes.inject do |total, tax|
      addition = tax.income_dependent? ? tax.value * income : tax.value

      total + addition
    end
  end

  private

  attr_reader :income, :taxes
end
