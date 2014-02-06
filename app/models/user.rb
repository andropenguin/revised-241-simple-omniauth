# -*- coding: utf-8 -*-
class User < ActiveRecord::Base
  attr_accessible :name, :provider, :uid

  def self.create_with_omniauth(auth)
    # create!によって、新規ユーザの情報がデータベースに保存される前に修正することができる
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      # user.name = auth["user_info"]["name"] # user_infoではなく、info
      user.name = auth["info"]["name"]
    end
  end
end
