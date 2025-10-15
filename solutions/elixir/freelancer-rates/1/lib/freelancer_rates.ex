defmodule FreelancerRates do
  import Float

  def daily_rate(hourly_rate) do
    8.0 * hourly_rate
  end

  def apply_discount(before_discount, discount) do
    before_discount - ((before_discount/100) * discount)
  end

  def monthly_rate(hourly_rate, discount) do
    monthly_rate = daily_rate(hourly_rate) * 22.0
    trunc(Float.ceil(apply_discount(monthly_rate, discount)))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    d_rate = daily_rate(hourly_rate)
    d_discounted = apply_discount(d_rate, discount)
    floor(budget/d_discounted, 1)
  end
end
