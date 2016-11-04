class Message < ActiveRecord::Base
    #名前は名前は必須名前は必須入力名前は必須入力かつ20文字2以内
    validates :name,length:{maximum:20},presence:true
    #内容必須入力かつ2文字以内以上以上３０文字以下
    validates :body,length:{minimum:2,maximum:30},presence:true
    #年齢必須入力かつ0以上の数字だけ入力可能
    validates :age,numericality: {only_integer: true, greater_than:1},presence:true
end

