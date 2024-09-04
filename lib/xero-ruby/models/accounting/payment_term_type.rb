=begin
#Xero Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  class PaymentTermType
    DAYSAFTERBILLDATE ||= "DAYSAFTERBILLDATE".freeze
    DAYSAFTERBILLMONTH ||= "DAYSAFTERBILLMONTH".freeze
    OFCURRENTMONTH ||= "OFCURRENTMONTH".freeze
    OFFOLLOWINGMONTH ||= "OFFOLLOWINGMONTH".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = PaymentTermType.constants.select { |c| PaymentTermType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #PaymentTermType" if constantValues.empty?
      value
    end
  end
end
