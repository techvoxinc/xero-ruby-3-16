=begin
#Xero Payroll AU API

#This is the Xero Payroll API for orgs in Australia region.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test test12: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::PayrollAu
  class ManualTaxType
    PAYGMANUAL ||= "PAYGMANUAL".freeze
    ETPOMANUAL ||= "ETPOMANUAL".freeze
    ETPRMANUAL ||= "ETPRMANUAL".freeze
    SCHEDULE5_MANUAL ||= "SCHEDULE5MANUAL".freeze
    SCHEDULE5_STSLMANUAL ||= "SCHEDULE5STSLMANUAL".freeze
    SCHEDULE4_MANUAL ||= "SCHEDULE4MANUAL".freeze

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
      constantValues = ManualTaxType.constants.select { |c| ManualTaxType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #ManualTaxType" if constantValues.empty?
      value
    end
  end
end
