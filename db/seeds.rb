# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new
u.email = "admin@test.com"
u.password = "123456"
u.password_confirmation = "123456"
u.is_admin = true
u.save

Category.create(name: "远动调度")
Category.create(name: "电力调度")

create_quizzes =
  Quiz.create!([title: "电力调度",description:"步骤一", product_id: 1])

create_quizzes =
    Quiz.create!([title: "远动调度",description:"远动调度测试题", product_id: 2])

create_questions =
  Question.create!([content: "接触网断电操作步骤？",answer_1:"步骤一", answer_2:"步骤二",answer_3:"步骤三",answer_4:"步骤四" ,
    quiz_id: 1, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])

create_questions =
  Question.create!([content: "继电器保护装置种类？",answer_1:"第一类", answer_2:"第二类",answer_3:"第三类",answer_4:"第四类",
    quiz_id: 1, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false])

create_questions =
  Question.create!([content: "SCADA作业规范？",answer_1:"规范一", answer_2:"规范二",answer_3:"规范三",answer_4:"规范四",
    quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false])

create_questions =
  Question.create!([content: "长春属于哪个铁路总局？",answer_1:"长春铁路总局", answer_2:"北京铁路总局",answer_3:"黑龙江铁路总局",answer_4:"沈阳铁路总局",
     quiz_id: 1, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

create_questions =
 Question.create!([content: "长春属于哪个铁路总局？",answer_1:"长春铁路总局", answer_2:"北京铁路总局",answer_3:"黑龙江铁路总局",answer_4:"沈阳铁路总局",
    quiz_id: 2, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true])

create_questions =
  Question.create!([content: "接触网断电操作步骤？",answer_1:"步骤一", answer_2:"步骤二",answer_3:"步骤三",answer_4:"步骤四" ,
    quiz_id: 2, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false])
