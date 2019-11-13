# frozen_string_literal: true

ActiveAdmin.register Customer do
  permit_params :fullname, :phone, :email, :image, :notes
end
