# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "123admin@test.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save

Category.create(name: "全国卷")
Category.create(name: "山东卷")
Category.create(name: "北京卷")
Category.create(name: "四川卷")
Category.create(name: "上海卷")
Category.create(name: "江苏卷")

for i in 1..6 do

Product.create!(title:"数学卷",description:"历年数学选择题",size:1,quantity:100,price:1.99,category_id: i)

Product.create!(title:"语文卷",description:"历年语文选择题",size:1,quantity:100,price:1.99,category_id: i)

Product.create!(title:"英语卷",description:"历年英语选择题",size:1,quantity:100,price:1.99,category_id: i)

Product.create!(title:"物理卷",description:"历年物理选择题",size:1,quantity:100,price:0.99,category_id: i)

Product.create!(title:"化学卷",description:"历年化学选择题",size:1,quantity:100,price:0.99,category_id: i)

Product.create!(title:"政治卷",description:"历年政治选择题",size:1,quantity:100,price:0.99,category_id: i)


end

for i in 1..36 do

create_quizzes =
    Quiz.create!([title: "2016年考题",description:"2016年高考选择题", product_id: i])

create_quizzes =
    Quiz.create!([title: "2015年考题",description:"2015年高考选择题", product_id: i])

end


for i in 1..36 do
create_questions =
  Question.create!([content: "1. —I’m sorry I didn’t finish it on time. — _______",answer_1:"Fine，thanks.", answer_2:"No，thanks.",answer_3:"Thanks a lot.",answer_4:"hanks anyway." ,
    quiz_id: i, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true, description: "本题考查情景交际。上文说“对不起，我没有按时完成任务”，言语当中充满了抱歉，所以后者出于礼貌的考虑还是要谢谢他。Thanks anyway.“不管怎样还是要谢谢你”。"])

create_questions =
  Question.create!([content: "2. Lydia doesn’t feel like_____abroad. Her parents are old.",answer_1:"study", answer_2:"studying",answer_3:"studied",answer_4:"to study",
    quiz_id: i, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false ,description: "考查固定结构。feel like doing“想要/喜欢做某事”，故选B项。句意为：Lydia不想出国留学，她的父母年龄太大了。"])

create_questions =
  Question.create!([content: "3.There is____in his words. We should have a try.",answer_1:"something", answer_2:"anything",answer_3:"nothing",answer_4:"everything",
    quiz_id: i, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false, description:"考查不定代词。something有用的、重要的东西；anything任何东西；nothing没有任何东西；everything所有的东西。句意为：他说的话中有一些有用的东西，我们可以试一下。故选A项。"])

create_questions =
  Question.create!([content: "4. Frank insisted that he was not asleep____I had great difficulty in waking him up.？",answer_1:"whether", answer_2:"although",answer_3:"for",answer_4:"so",
     quiz_id: i, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false,description:"考查从属连词。although作为连词引导让步状语从句。句意为：尽管我很难叫醒他，但弗兰克却坚持说自己没有睡觉。前后句子表达“虽然……但是……”的转折语气，故选B项。whether作为连词可接名词从句表示“是否”的意思，接让步状语从句表示“不管, 无论”,与题意不符；for作为连词引导原因状语从句；so作为连词引导结果状语从句；均不合题意。"])

create_questions =
 Question.create!([content: "5. —How could you be so rude as to walk in here in the middle of my class? —_______",answer_1:"Nothing much", answer_2:"Nothing serious",answer_3:"Never again",answer_4:"Never mind",
    quiz_id: i, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false,description:"考查情景交际。上文说“你怎么能这么粗鲁，我们上着课就走了进来了呢”，有些生气的意思，所以下文应该表示歉意，用never again“再也不会出现这种情况了”符合题意，故选C项。nothing much“没有什么,无关紧要的事”；nothing serious“没什么严重的”；Never mind“没关系,不用担心”"])
end

for i in 37..72 do
  create_questions =
    Question.create!([content: "1.There is____in his words. We should have a try.",answer_1:"something", answer_2:"anything",answer_3:"nothing",answer_4:"everything",
      quiz_id: i, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false, description:"考查不定代词。something有用的、重要的东西；anything任何东西；nothing没有任何东西；everything所有的东西。句意为：他说的话中有一些有用的东西，我们可以试一下。故选A项。"])


create_questions =
  Question.create!([content: "2. —I’m sorry I didn’t finish it on time. — _______",answer_1:"Fine，thanks.", answer_2:"No，thanks.",answer_3:"Thanks a lot.",answer_4:"hanks anyway." ,
    quiz_id: i, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true, description: "本题考查情景交际。上文说“对不起，我没有按时完成任务”，言语当中充满了抱歉，所以后者出于礼貌的考虑还是要谢谢他。Thanks anyway.“不管怎样还是要谢谢你”。"])


create_questions =
 Question.create!([content: "3. —How could you be so rude as to walk in here in the middle of my class? —_______",answer_1:"Nothing much", answer_2:"Nothing serious",answer_3:"Never again",answer_4:"Never mind",
    quiz_id: i, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false,description:"考查情景交际。上文说“你怎么能这么粗鲁，我们上着课就走了进来了呢”，有些生气的意思，所以下文应该表示歉意，用never again“再也不会出现这种情况了”符合题意，故选C项。nothing much“没有什么,无关紧要的事”；nothing serious“没什么严重的”；Never mind“没关系,不用担心”"])

create_questions =
  Question.create!([content: "4. Lydia doesn’t feel like_____abroad. Her parents are old.",answer_1:"study", answer_2:"studying",answer_3:"studied",answer_4:"to study",
    quiz_id: i, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false ,description: "考查固定结构。feel like doing“想要/喜欢做某事”，故选B项。句意为：Lydia不想出国留学，她的父母年龄太大了。"])

create_questions =
  Question.create!([content: "5. Frank insisted that he was not asleep____I had great difficulty in waking him up.？",answer_1:"whether", answer_2:"although",answer_3:"for",answer_4:"so",
     quiz_id: i, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false,description:"考查从属连词。although作为连词引导让步状语从句。句意为：尽管我很难叫醒他，但弗兰克却坚持说自己没有睡觉。前后句子表达“虽然……但是……”的转折语气，故选B项。whether作为连词可接名词从句表示“是否”的意思，接让步状语从句表示“不管, 无论”,与题意不符；for作为连词引导原因状语从句；so作为连词引导结果状语从句；均不合题意。"])


end
