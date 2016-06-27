User.create(name: "admin", email: "admin@gmail.com",
  password: "123456", password_confirmation: "123456")
Category.create(name: "Truyen ngan")

10.times do |n|
  Book.create! title: "New Book" + (n+1).to_s,
    description: "Noi dung content",
    publish_date: "2016/2/5",
    author: "Tao Luyen" + (n+1).to_s,
    number_page: n+123,
    picture: "/assets/dac-nhan-tam.jpg",
    rate_avg: 5,
    category_id: 1
end

20.times do |n|
  Book.create! title: "New Book" + (n+1).to_s,
    description: "Noi dung content",
    publish_date: "2016/2/5",
    author: "Pham Thu Hang" + (n+1).to_s,
    number_page: n+123,
    picture: "/assets/a4.jpg",
    rate_avg: 5,
    category_id: 1
end
