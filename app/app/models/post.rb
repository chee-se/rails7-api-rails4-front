# frozen_string_literal: true

class Post < ActiveResource::Base
  self.site = "http://api:3000"

  belongs_to :user
end
