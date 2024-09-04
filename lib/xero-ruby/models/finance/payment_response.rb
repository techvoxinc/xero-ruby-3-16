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

  class PaymentResponse
    # Xero Identifier of payment
    attr_accessor :payment_id
    
    # Xero Identifier of batch payment. Present if the payment was created as part of a batch.
    attr_accessor :batch_payment_id
    
    # Date the payment is being made (YYYY-MM-DD) e.g. 2009-09-06
    attr_accessor :date
    
    # The amount of the payment
    attr_accessor :amount
    
    # The bank amount of the payment
    attr_accessor :bank_amount
    
    # Exchange rate when payment is received. Only used for non base currency invoices and credit notes e.g. 0.7500
    attr_accessor :currency_rate
    

    attr_accessor :invoice
    

    attr_accessor :credit_note
    

    attr_accessor :prepayment
    

    attr_accessor :overpayment
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'payment_id' => :'paymentId',
        :'batch_payment_id' => :'batchPaymentId',
        :'date' => :'date',
        :'amount' => :'amount',
        :'bank_amount' => :'bankAmount',
        :'currency_rate' => :'currencyRate',
        :'invoice' => :'invoice',
        :'credit_note' => :'creditNote',
        :'prepayment' => :'prepayment',
        :'overpayment' => :'overpayment'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'payment_id' => :'String',
        :'batch_payment_id' => :'String',
        :'date' => :'Date',
        :'amount' => :'BigDecimal',
        :'bank_amount' => :'BigDecimal',
        :'currency_rate' => :'Float',
        :'invoice' => :'InvoiceResponse',
        :'credit_note' => :'CreditNoteResponse',
        :'prepayment' => :'PrepaymentResponse',
        :'overpayment' => :'OverpaymentResponse'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Finance::PaymentResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Finance::PaymentResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'payment_id')
        self.payment_id = attributes[:'payment_id']
      end

      if attributes.key?(:'batch_payment_id')
        self.batch_payment_id = attributes[:'batch_payment_id']
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'bank_amount')
        self.bank_amount = attributes[:'bank_amount']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'invoice')
        self.invoice = attributes[:'invoice']
      end

      if attributes.key?(:'credit_note')
        self.credit_note = attributes[:'credit_note']
      end

      if attributes.key?(:'prepayment')
        self.prepayment = attributes[:'prepayment']
      end

      if attributes.key?(:'overpayment')
        self.overpayment = attributes[:'overpayment']
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
          payment_id == o.payment_id &&
          batch_payment_id == o.batch_payment_id &&
          date == o.date &&
          amount == o.amount &&
          bank_amount == o.bank_amount &&
          currency_rate == o.currency_rate &&
          invoice == o.invoice &&
          credit_note == o.credit_note &&
          prepayment == o.prepayment &&
          overpayment == o.overpayment
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [payment_id, batch_payment_id, date, amount, bank_amount, currency_rate, invoice, credit_note, prepayment, overpayment].hash
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
