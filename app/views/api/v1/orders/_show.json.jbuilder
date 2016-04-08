  orders ||= @orders
  drinks ||= @drinks
  first_courses ||= @first_courses
  second_courses ||= @second_courses
  users ||= @users

  json.id orders['id']
  json.user_name users.find_by_id(orders['user_id']).name
  json.first_course first_courses.find_by_id(orders['first_course_id']).name
  json.first_course_price first_courses.find_by_id(orders['first_course_id']).price
  json.main_course second_courses.find_by_id(orders['second_course_id']).name
  json.main_course_price second_courses.find_by_id(orders['second_course_id']).price
  json.drink drinks.find_by_id(orders['drink_id']).name
  json.drink_price drinks.find_by_id(orders['drink_id']).price



  if orders.class == ActiveRecord::Base && !order.persisted? &&
  !orders.valid?
    json.errors orders.errors.messages
  end
  
  