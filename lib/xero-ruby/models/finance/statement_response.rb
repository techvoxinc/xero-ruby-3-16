=begin
#Xero Finance API

#The Finance API is a collection of endpoints which customers can use in the course of a loan application, which may assist lenders to gain the confidence they need to provide capital.

Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Finance
  require 'bigdecimal'

  class StatementResponse
    # Xero Identifier of statement
    attr_accessor :statement_id
    
    # Start date of statement
    attr_accessor :start_date
    
    # End date of statement
    attr_accessor :end_date
    
    # Utc date time of when the statement was imported in Xero
    attr_accessor :imported_date_time_utc
    
    # Identifies where the statement data in Xero was sourced, 1) direct bank feed, automatically loaded from the bank (eg STMTIMPORTSRC/CBAFEED); 2) indirect bank feed, automatically loaded from a 3rd party provider (eg STMTIMPORTSRC/YODLEE); 3) manually uploaded bank feed (eg STMTIMPORTSRC/CSV) or 4) manually entered statement data (STMTIMPORTSRC/MANUAL).
    attr_accessor :import_source
    
    # Opening balance sourced from imported bank statements (if supplied). Note, for manually uploaded statements, this balance is also manual and usually not supplied. Where not supplied, the value will be 0.
    attr_accessor :start_balance
    
    # Closing balance sourced from imported bank statements (if supplied). Note, for manually uploaded statements, this balance is also manual and usually not supplied. Where not supplied, the value will be 0.
    attr_accessor :end_balance
    
    # Opening statement balance calculated in Xero (= bank account conversion balance plus sum of imported bank statement lines). Note: If indicative statement balance doesn't match imported statement balance for the same date, either the conversion (opening at inception) balance in Xero is wrong or there's an error in the bank statement lines in Xero. Ref: https://central.xero.com/s/article/Compare-the-statement-balance-in-Xero-to-your-actual-bank-balance?userregion=true 
    attr_accessor :indicative_start_balance
    
    # Closing statement balance calculated in Xero (= bank account conversion balance plus sum of imported bank statement lines). Note: If indicative statement balance doesn't match imported statement balance for the same date, either the conversion (opening at inception) balance in Xero is wrong or there's an error in the bank statement lines in Xero. Ref: https://central.xero.com/s/article/Compare-the-statement-balance-in-Xero-to-your-actual-bank-balance?userregion=true  
    attr_accessor :indicative_end_balance
    
    # List of statement lines
    attr_accessor :statement_lines
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'statement_id' => :'statementId',
        :'start_date' => :'startDate',
        :'end_date' => :'endDate',
        :'imported_date_time_utc' => :'importedDateTimeUtc',
        :'import_source' => :'importSource',
        :'start_balance' => :'startBalance',
        :'end_balance' => :'endBalance',
        :'indicative_start_balance' => :'indicativeStartBalance',
        :'indicative_end_balance' => :'indicativeEndBalance',
        :'statement_lines' => :'statementLines'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'statement_id' => :'String',
        :'start_date' => :'Date',
        :'end_date' => :'Date',
        :'imported_date_time_utc' => :'DateTime',
        :'import_source' => :'String',
        :'start_balance' => :'BigDecimal',
        :'end_balance' => :'BigDecimal',
        :'indicative_start_balance' => :'BigDecimal',
        :'indicative_end_balance' => :'BigDecimal',
        :'statement_lines' => :'Array<StatementLineResponse>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Finance::StatementResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Finance::StatementResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'statement_id')
        self.statement_id = attributes[:'statement_id']
      end

      if attributes.key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.key?(:'imported_date_time_utc')
        self.imported_date_time_utc = attributes[:'imported_date_time_utc']
      end

      if attributes.key?(:'import_source')
        self.import_source = attributes[:'import_source']
      end

      if attributes.key?(:'start_balance')
        self.start_balance = attributes[:'start_balance']
      end

      if attributes.key?(:'end_balance')
        self.end_balance = attributes[:'end_balance']
      end

      if attributes.key?(:'indicative_start_balance')
        self.indicative_start_balance = attributes[:'indicative_start_balance']
      end

      if attributes.key?(:'indicative_end_balance')
        self.indicative_end_balance = attributes[:'indicative_end_balance']
      end

      if attributes.key?(:'statement_lines')
        if (value = attributes[:'statement_lines']).is_a?(Array)
          self.statement_lines = value
        end
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
          statement_id == o.statement_id &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          imported_date_time_utc == o.imported_date_time_utc &&
          import_source == o.import_source &&
          start_balance == o.start_balance &&
          end_balance == o.end_balance &&
          indicative_start_balance == o.indicative_start_balance &&
          indicative_end_balance == o.indicative_end_balance &&
          statement_lines == o.statement_lines
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [statement_id, start_date, end_date, imported_date_time_utc, import_source, start_balance, end_balance, indicative_start_balance, indicative_end_balance, statement_lines].hash
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
