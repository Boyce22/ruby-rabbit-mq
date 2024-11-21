# frozen_string_literal: true

class User < ApplicationRecord
    attr_accessor :name

    validates: :first_name, :email, :presence: true,
    validates: :email, uniqueness: true

    def name(nome)
        nome = nome.split(' ')
       self[:first_name] = nome.shift
       self[:last_name] = nome.join(' ')
    end

    def name
        values_at(:first_name, :last_name).join(' ')
    end
end
