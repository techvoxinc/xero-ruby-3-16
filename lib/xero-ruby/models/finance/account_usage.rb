=begin
#Xero Finance API

#The Finance API is a collection of endpoints which customers can use in the course of a loan application, which may assist lenders to gain the confidence they need to provide capital.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version test: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Finance
  require 'bigdecimal'

  class AccountUsage
    # The month this usage item contains data for
    attr_accessor :month
    
    # The account this usage item contains data for
    attr_accessor :account_id
    
    # The currency code this usage item contains data for
    attr_accessor :currency_code
    
    # Total received
    attr_accessor :total_received
    
    # Count of received
    attr_accessor :count_received
    
    # Total paid
    attr_accessor :total_paid
    
    # Count of paid
    attr_accessor :count_paid
    
    # Total value of manual journals
    attr_accessor :total_manual_journal
    
    # Count of manual journals
    attr_accessor :count_manual_journal
    
    # The name of the account
    attr_accessor :account_name
    
    # Shown if set
    attr_accessor :reporting_code
    
    # Shown if set
    attr_accessor :reporting_code_name
    
    # Last modified date UTC format
    attr_accessor :report_code_updated_date_utc
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'month' => :'month',
        :'account_id' => :'accountId',
        :'currency_code' => :'currencyCode',
        :'total_received' => :'totalReceived',
        :'count_received' => :'countReceived',
        :'total_paid' => :'totalPaid',
        :'count_paid' => :'countPaid',
        :'total_manual_journal' => :'totalManualJournal',
        :'count_manual_journal' => :'countManualJournal',
        :'account_name' => :'accountName',
        :'reporting_code' => :'reportingCode',
        :'reporting_code_name' => :'reportingCodeName',
        :'report_code_updated_date_utc' => :'reportCodeUpdatedDateUtc'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'month' => :'String',
        :'account_id' => :'String',
        :'currency_code' => :'String',
        :'total_received' => :'BigDecimal',
        :'count_received' => :'Integer',
        :'total_paid' => :'BigDecimal',
        :'count_paid' => :'Integer',
        :'total_manual_journal' => :'BigDecimal',
        :'count_manual_journal' => :'Integer',
        :'account_name' => :'String',
        :'reporting_code' => :'String',
        :'reporting_code_name' => :'String',
        :'report_code_updated_date_utc' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Finance::AccountUsage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Finance::AccountUsage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'month')
        self.month = attributes[:'month']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'total_received')
        self.total_received = attributes[:'total_received']
      end

      if attributes.key?(:'count_received')
        self.count_received = attributes[:'count_received']
      end

      if attributes.key?(:'total_paid')
        self.total_paid = attributes[:'total_paid']
      end

      if attributes.key?(:'count_paid')
        self.count_paid = attributes[:'count_paid']
      end

      if attributes.key?(:'total_manual_journal')
        self.total_manual_journal = attributes[:'total_manual_journal']
      end

      if attributes.key?(:'count_manual_journal')
        self.count_manual_journal = attributes[:'count_manual_journal']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'reporting_code')
        self.reporting_code = attributes[:'reporting_code']
      end

      if attributes.key?(:'reporting_code_name')
        self.reporting_code_name = attributes[:'reporting_code_name']
      end

      if attributes.key?(:'report_code_updated_date_utc')
        self.report_code_updated_date_utc = attributes[:'report_code_updated_date_utc']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          month == o.month &&
          account_id == o.account_id &&
          currency_code == o.currency_code &&
          total_received == o.total_received &&
          count_received == o.count_received &&
          total_paid == o.total_paid &&
          count_paid == o.count_paid &&
          total_manual_journal == o.total_manual_journal &&
          count_manual_journal == o.count_manual_journal &&
          account_name == o.account_name &&
          reporting_code == o.reporting_code &&
          reporting_code_name == o.reporting_code_name &&
          report_code_updated_date_utc == o.report_code_updated_date_utc
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [month, account_id, currency_code, total_received, count_received, total_paid, count_paid, total_manual_journal, count_manual_journal, account_name, reporting_code, reporting_code_name, report_code_updated_date_utc].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BigDecimal
        BigDecimal(value.to_s)
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        XeroRuby::Finance.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash(downcase: false)
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        key = downcase ? attr : param
        hash[key] = _to_hash(value, downcase: downcase)
      end
      hash
    end

    # Returns the object in the form of hash with snake_case
    def to_attributes
      to_hash(downcase: true)
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value, downcase: false)
      if value.is_a?(Array)
        value.map do |v|
          v.to_hash(downcase: downcase)
        end
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.map { |k, v| hash[k] = _to_hash(v, downcase: downcase) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash(downcase: downcase)
      else
        value
      end
    end

    def parse_date(datestring)
      if datestring.include?('Date')
        date_pattern = /\/Date\((-?\d+)(\+\d+)?\)\//
        original, date, timezone = *date_pattern.match(datestring)
        date = (date.to_i / 1000)
        Time.at(date).utc.strftime('%Y-%m-%dT%H:%M:%S%z').to_s
      elsif /(\d\d\d\d)-(\d\d)/.match(datestring) # handles dates w/out Days: YYYY-MM*-DD
        Time.parse(datestring + '-01').strftime('%Y-%m-%dT%H:%M:%S').to_s
      else # handle date 'types' for small subset of payroll API's
        Time.parse(datestring).strftime('%Y-%m-%dT%H:%M:%S').to_s
      end
    end
  end
end
