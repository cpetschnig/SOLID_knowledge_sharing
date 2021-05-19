class Employment < ActiveRecord::Base
  # ...
end


Employment.new do |employment|
  employment.start_date = Date.today
end


business.employments.build do |employment|
  employment.schedule = schedule_x
  # ...
end




class MyClass
  def initialize(object, value)
    @object = object
    @value = value

    yield(self) if block_given?
  end

  def post_data_to_service(foo)
    response = service_client.post('htts://...', data: {value: value, param: foo})

    yield(response) if block_given?

    response.status == 201
  end

  def get_data_from_service(foo, &block)
    response = service_client.get("htts://...?param=#{foo}")

    block.call(response) if block.present?

    response.status == 200
  end
end
