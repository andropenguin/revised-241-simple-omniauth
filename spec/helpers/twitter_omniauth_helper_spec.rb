# -*- coding: utf-8 -*-
require 'spec_helper'

describe TwitterOmniauthHelper do
  describe "signed_in?" do
    it "ログイン済と判定する" do
      session[:oauth_token] = "xxx"
      result = signed_in?
      result.should eq(true)
    end

    it "ログインしていないと判定する" do
      result = signed_in?
      result.should eq(false)
    end
  end

  describe "create_client" do
    it "TwitterClientのインスタンスを返す" do
      set_auth_session(OmniAuth.config.mock_auth[:twitter])
      create_client
      session[:consumer_key].should_not eq(nil)
      session[:consumer_secret].should_not eq(nil)
      session[:oauth_token].should_not eq(nil)
      session[:oauth_token_secret].should_not eq(nil)
      session[:username].should_not eq(nil)
    end
  end

  describe "set_auth_session" do
    it "認証した値を設定する" do
      set_auth_session(OmniAuth.config.mock_auth[:twitter])
      session[:consumer_key].should_not eq(nil)
      session[:consumer_secret].should_not eq(nil)
      session[:oauth_token].should_not eq(nil)
      session[:oauth_token_secret].should_not eq(nil)
      session[:username].should_not eq(nil)
    end

    it "サインアウト時、値を削除する" do
      set_auth_session(nil)
      session[:consumer_key].should eq(nil)
      session[:consumer_secret].should eq(nil)
      session[:oauth_token].should eq(nil)
      session[:oauth_token_secret].should eq(nil)
      session[:username].should eq(nil)
    end
  end
end
