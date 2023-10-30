class CalculatorController < ApplicationController

  def home
    render({:template => "calc_template/square_new"})
  end

  def square_new
    render({:template=> "calc_template/square_new"})
  end

  def square_results
    @number = params.fetch("square-value").to_f
    @solution = @number ** 2
    render({:template => "calc_template/square_results"})
  end

  def sqrt_new
    render({:template => "calc_template/sqrt_new"})
  end

  def sqrt_results
    @number = params.fetch("sqrt").to_f
    @solution = @number **0.5
    render({:template => "calc_template/sqrt_results"})
  end

  def payment_new
    render({:template => "calc_template/payment_new"})
  end

  def payment_results
    @apr = params.fetch("apr").to_f
    @years = params.fetch("years").to_f
    @principal = params.fetch("principal").to_f
    @payment = (((@apr/1200)* @principal) / (1-((1+ (@apr/1200))**(-@years*12))))
    render({:template => "calc_template/payment_results"})
  end

  def random_new
    render({:template => "calc_template/random_new"})
  end

  def random_results
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f
    @number = rand(@min..@max)
    render({:template => "calc_template/random_results"})
  end
end
