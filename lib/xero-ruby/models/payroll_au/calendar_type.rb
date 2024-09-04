=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test test12 test123 test1234 test12345: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  class CalendarType
    WEEKLY ||= "WEEKLY".freeze
    FORTNIGHTLY ||= "FORTNIGHTLY".freeze
    FOURWEEKLY ||= "FOURWEEKLY".freeze
    MONTHLY ||= "MONTHLY".freeze
    TWICEMONTHLY ||= "TWICEMONTHLY".freeze
    QUARTERLY ||= "QUARTERLY".freeze

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
      constantValues = CalendarType.constants.select { |c| CalendarType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #CalendarType" if constantValues.empty?
      value
    end
  end
end
