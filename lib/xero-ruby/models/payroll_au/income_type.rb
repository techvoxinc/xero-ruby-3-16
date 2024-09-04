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
  class IncomeType
    SALARYANDWAGES ||= "SALARYANDWAGES".freeze
    WORKINGHOLIDAYMAKER ||= "WORKINGHOLIDAYMAKER".freeze
    NONEMPLOYEE ||= "NONEMPLOYEE".freeze
    CLOSELYHELDPAYEES ||= "CLOSELYHELDPAYEES".freeze
    LABOURHIRE ||= "LABOURHIRE".freeze

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
      constantValues = IncomeType.constants.select { |c| IncomeType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #IncomeType" if constantValues.empty?
      value
    end
  end
end
