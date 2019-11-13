# frozen_string_literal: true

class CustomerController < ApplicationController
  def index
    @customer = Customer.all
  end

  def alphabetized
    @customer = Customer.order(:fullname)
  end

  def missing_email
    @customer = Customer.where('email = ? ', '')
  end
end
