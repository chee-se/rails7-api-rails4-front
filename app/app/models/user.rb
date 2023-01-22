# frozen_string_literal: true

class User < ActiveResource::Base
  self.site = "http://api:3000"

  has_many :posts

  def as_json(options)
    super.merge(include: :posts)
  end
end
