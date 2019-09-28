require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do

    let(:params) {{name: "さとる"}}

    it "年齢1：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(age: 1)
      user = User.new(params)
      expect(user.disp_name).to eq "さとるちゃん"
    end
    it "年齢15：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(age: 15)
      user = User.new(params)
      expect(user.disp_name).to eq "さとる君"
    end
    it "年齢20：ユーザーの名前が取得できること" do
      # merge!メソッドで後からパラメータを追加
      params.merge!(age: 20)
      user = User.new(params)
      expect(user.disp_name).to eq "さとるさん"
    end
    it "年齢-1：「不正な値です。」が取得できること" do

      params.merge!(age: -1)
      user = User.new(params)
      expect(user.disp_name).to eq "不正な値です。"
    end
  end
end
