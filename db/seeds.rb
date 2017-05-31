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

# Size.create(name: "判断题")
# Size.create(name: "选择题")
# Size.create(name: "识图题")


# create_exams =
#   Exam.create!([name: "1", question: "接触网断电操作步骤？",answer_1:"34", answer_2:"35",answer_3:"36",answer_4:"33" ,
#     category_id: 1, is_a1en: true ,is_b1en: false,is_c1en: false,is_d1en: false,countdown:"2017-05-31T00:30"])
#
# create_choices =
#   Choice.create!([name: "1",is_aa1en: false,is_bb1en: false,is_cc1en: false,is_dd1en: false])
#
#
#
# create_exams =
#   Exam.create!([name: "2", question: "继电器保护装置种类？",answer_1:"48", answer_2:"56",answer_3:"34",answer_4:"35",
#     category_id: 2, is_a1en: false ,is_b1en: true,is_c1en: false,is_d1en: false,countdown:"2017-05-31T00:30"])
#
# create_choices =
#   Choice.create!([name: "2",is_aa1en: false ,is_bb1en: false,is_cc1en: false,is_dd1en: false])
#
#
#
#   create_exams =
#     Exam.create!([name: "3", question: "SCADA作业规范？",answer_1:"aaa", answer_2:"bbb",answer_3:"ccc",answer_4:"ddd",
#       category_id: 1, is_a1en: false ,is_b1en: false,is_c1en: true,is_d1en: false,countdown:"2017-05-31T00:30"])
#
#   create_choices =
#     Choice.create!([name: "3",is_aa1en: false ,is_bb1en: false,is_cc1en: false,is_dd1en: false])
#
#
#
#     create_exams =
#       Exam.create!([name: "4", question: "长春属于哪个铁路总局？",answer_1:"长春铁路总局", answer_2:"北京铁路总局",answer_3:"黑龙江铁路总局",answer_4:"沈阳铁路总局",
#         category_id: 2, is_a1en: false ,is_b1en: false,is_c1en: false,is_d1en: true,countdown:"2017-05-31T00:30"])
#
#     create_choices =
#       Choice.create!([name: "4",is_aa1en: false ,is_bb1en: false,is_cc1en: false,is_dd1en: false])
