=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  class SeniorMaritalStatus
    MEMBEROFCOUPLE ||= "MEMBEROFCOUPLE".freeze
    MEMBEROFILLNESSSEPARATEDCOUPLE ||= "MEMBEROFILLNESSSEPARATEDCOUPLE".freeze
    SINGLE ||= "SINGLE".freeze

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
      constantValues = SeniorMaritalStatus.constants.select { |c| SeniorMaritalStatus::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #SeniorMaritalStatus" if constantValues.empty?
      value
    end
  end
end
