class Apipie::Generator::Swagger::MethodDescription::Decorator < SimpleDelegator
  # @return [String]
  def operation_id
    "#{object.resource.controller.name}__#{__method__}"
  end

  # @return [String]
  def ruby_name
    if object.blank?
      '<no method>'
    else
      "#{object.resource.controller.name}##{__method__}"
    end
  end

  private

  # @return [Apipie::MethodDescription, nil]
  def object
    __getobj__
  end
end
