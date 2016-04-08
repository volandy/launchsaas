 json.orders @orders, partial: 'api/v1/orders/show', as: :orders
  json.total_count @orders.respond_to?(:total_entries) ?
  @orders.total_entries : @orders.to_a.count