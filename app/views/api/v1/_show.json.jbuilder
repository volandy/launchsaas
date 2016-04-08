  orders ||= @orders

  json.id orders['id']
  json.name orders['user_id']
  json.first_course_id orders['first_course_id']
  json.second_course_id orders['second_course_id']
  json.drink_id orders['drink_id']



  if orders.class == ActiveRecord::Base && !order.persisted? &&
  !orders.valid?
    json.errors orders.errors.messages
  end
  
  