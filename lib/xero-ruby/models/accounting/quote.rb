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
  require 'bigdecimal'

  class Quote
    # QuoteID GUID is automatically generated and is returned after create or GET.
    attr_accessor :quote_id
    
    # Unique alpha numeric code identifying a quote (Max Length = 255)
    attr_accessor :quote_number
    
    # Additional reference number
    attr_accessor :reference
    
    # Terms of the quote
    attr_accessor :terms
    

    attr_accessor :contact
    
    # See LineItems
    attr_accessor :line_items
    
    # Date quote was issued – YYYY-MM-DD. If the Date element is not specified it will default to the current date based on the timezone setting of the organisation
    attr_accessor :date
    
    # Date the quote was issued (YYYY-MM-DD)
    attr_accessor :date_string
    
    # Date the quote expires – YYYY-MM-DD.
    attr_accessor :expiry_date
    
    # Date the quote expires – YYYY-MM-DD.
    attr_accessor :expiry_date_string
    

    attr_accessor :status
    

    attr_accessor :currency_code
    
    # The currency rate for a multicurrency quote
    attr_accessor :currency_rate
    
    # Total of quote excluding taxes.
    attr_accessor :sub_total
    
    # Total tax on quote
    attr_accessor :total_tax
    
    # Total of Quote tax inclusive (i.e. SubTotal + TotalTax). This will be ignored if it doesn’t equal the sum of the LineAmounts
    attr_accessor :total
    
    # Total of discounts applied on the quote line items
    attr_accessor :total_discount
    
    # Title text for the quote
    attr_accessor :title
    
    # Summary text for the quote
    attr_accessor :summary
    
    # See BrandingThemes
    attr_accessor :branding_theme_id
    
    # Last modified date UTC format
    attr_accessor :updated_date_utc
    

    attr_accessor :line_amount_types
    
    # A string to indicate if a invoice status
    attr_accessor :status_attribute_string
    
    # Displays array of validation error messages from the API
    attr_accessor :validation_errors
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'quote_id' => :'QuoteID',
        :'quote_number' => :'QuoteNumber',
        :'reference' => :'Reference',
        :'terms' => :'Terms',
        :'contact' => :'Contact',
        :'line_items' => :'LineItems',
        :'date' => :'Date',
        :'date_string' => :'DateString',
        :'expiry_date' => :'ExpiryDate',
        :'expiry_date_string' => :'ExpiryDateString',
        :'status' => :'Status',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'CurrencyRate',
        :'sub_total' => :'SubTotal',
        :'total_tax' => :'TotalTax',
        :'total' => :'Total',
        :'total_discount' => :'TotalDiscount',
        :'title' => :'Title',
        :'summary' => :'Summary',
        :'branding_theme_id' => :'BrandingThemeID',
        :'updated_date_utc' => :'UpdatedDateUTC',
        :'line_amount_types' => :'LineAmountTypes',
        :'status_attribute_string' => :'StatusAttributeString',
        :'validation_errors' => :'ValidationErrors'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'quote_id' => :'String',
        :'quote_number' => :'String',
        :'reference' => :'String',
        :'terms' => :'String',
        :'contact' => :'Contact',
        :'line_items' => :'Array<LineItem>',
        :'date' => :'Date',
        :'date_string' => :'String',
        :'expiry_date' => :'Date',
        :'expiry_date_string' => :'String',
        :'status' => :'QuoteStatusCodes',
        :'currency_code' => :'CurrencyCode',
        :'currency_rate' => :'Float',
        :'sub_total' => :'BigDecimal',
        :'total_tax' => :'BigDecimal',
        :'total' => :'BigDecimal',
        :'total_discount' => :'BigDecimal',
        :'title' => :'String',
        :'summary' => :'String',
        :'branding_theme_id' => :'String',
        :'updated_date_utc' => :'DateTime',
        :'line_amount_types' => :'QuoteLineAmountTypes',
        :'status_attribute_string' => :'String',
        :'validation_errors' => :'Array<ValidationError>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::Quote` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::Quote`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'quote_id')
        self.quote_id = attributes[:'quote_id']
      end

      if attributes.key?(:'quote_number')
        self.quote_number = attributes[:'quote_number']
      end

      if attributes.key?(:'reference')
        self.reference = attributes[:'reference']
      end

      if attributes.key?(:'terms')
        self.terms = attributes[:'terms']
      end

      if attributes.key?(:'contact')
        self.contact = attributes[:'contact']
      end

      if attributes.key?(:'line_items')
        if (value = attributes[:'line_items']).is_a?(Array)
          self.line_items = value
        end
      end

      if attributes.key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.key?(:'date_string')
        self.date_string = attributes[:'date_string']
      end

      if attributes.key?(:'expiry_date')
        self.expiry_date = attributes[:'expiry_date']
      end

      if attributes.key?(:'expiry_date_string')
        self.expiry_date_string = attributes[:'expiry_date_string']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'currency_code')
        self.currency_code = attributes[:'currency_code']
      end

      if attributes.key?(:'currency_rate')
        self.currency_rate = attributes[:'currency_rate']
      end

      if attributes.key?(:'sub_total')
        self.sub_total = attributes[:'sub_total']
      end

      if attributes.key?(:'total_tax')
        self.total_tax = attributes[:'total_tax']
      end

      if attributes.key?(:'total')
        self.total = attributes[:'total']
      end

      if attributes.key?(:'total_discount')
        self.total_discount = attributes[:'total_discount']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
      end

      if attributes.key?(:'summary')
        self.summary = attributes[:'summary']
      end

      if attributes.key?(:'branding_theme_id')
        self.branding_theme_id = attributes[:'branding_theme_id']
      end

      if attributes.key?(:'updated_date_utc')
        self.updated_date_utc = attributes[:'updated_date_utc']
      end

      if attributes.key?(:'line_amount_types')
        self.line_amount_types = attributes[:'line_amount_types']
      end

      if attributes.key?(:'status_attribute_string')
        self.status_attribute_string = attributes[:'status_attribute_string']
      end

      if attributes.key?(:'validation_errors')
        if (value = attributes[:'validation_errors']).is_a?(Array)
          self.validation_errors = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@quote_number.nil? && @quote_number.to_s.length > 255
        invalid_properties.push('invalid value for "quote_number", the character length must be smaller than or equal to 255.')
      end

      if !@reference.nil? && @reference.to_s.length > 4000
        invalid_properties.push('invalid value for "reference", the character length must be smaller than or equal to 4000.')
      end

      if !@terms.nil? && @terms.to_s.length > 4000
        invalid_properties.push('invalid value for "terms", the character length must be smaller than or equal to 4000.')
      end

      if !@title.nil? && @title.to_s.length > 100
        invalid_properties.push('invalid value for "title", the character length must be smaller than or equal to 100.')
      end

      if !@summary.nil? && @summary.to_s.length > 3000
        invalid_properties.push('invalid value for "summary", the character length must be smaller than or equal to 3000.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@quote_number.nil? && @quote_number.to_s.length > 255
      return false if !@reference.nil? && @reference.to_s.length > 4000
      return false if !@terms.nil? && @terms.to_s.length > 4000
      return false if !@title.nil? && @title.to_s.length > 100
      return false if !@summary.nil? && @summary.to_s.length > 3000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] quote_number Value to be assigned
    def quote_number=(quote_number)
      if !quote_number.nil? && quote_number.to_s.length > 255
        fail ArgumentError, 'invalid value for "quote_number", the character length must be smaller than or equal to 255.'
      end

      @quote_number = quote_number
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.length > 4000
        fail ArgumentError, 'invalid value for "reference", the character length must be smaller than or equal to 4000.'
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] terms Value to be assigned
    def terms=(terms)
      if !terms.nil? && terms.to_s.length > 4000
        fail ArgumentError, 'invalid value for "terms", the character length must be smaller than or equal to 4000.'
      end

      @terms = terms
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.length > 100
        fail ArgumentError, 'invalid value for "title", the character length must be smaller than or equal to 100.'
      end

      @title = title
    end

    # Custom attribute writer method with validation
    # @param [Object] summary Value to be assigned
    def summary=(summary)
      if !summary.nil? && summary.to_s.length > 3000
        fail ArgumentError, 'invalid value for "summary", the character length must be smaller than or equal to 3000.'
      end

      @summary = summary
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          quote_id == o.quote_id &&
          quote_number == o.quote_number &&
          reference == o.reference &&
          terms == o.terms &&
          contact == o.contact &&
          line_items == o.line_items &&
          date == o.date &&
          date_string == o.date_string &&
          expiry_date == o.expiry_date &&
          expiry_date_string == o.expiry_date_string &&
          status == o.status &&
          currency_code == o.currency_code &&
          currency_rate == o.currency_rate &&
          sub_total == o.sub_total &&
          total_tax == o.total_tax &&
          total == o.total &&
          total_discount == o.total_discount &&
          title == o.title &&
          summary == o.summary &&
          branding_theme_id == o.branding_theme_id &&
          updated_date_utc == o.updated_date_utc &&
          line_amount_types == o.line_amount_types &&
          status_attribute_string == o.status_attribute_string &&
          validation_errors == o.validation_errors
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [quote_id, quote_number, reference, terms, contact, line_items, date, date_string, expiry_date, expiry_date_string, status, currency_code, currency_rate, sub_total, total_tax, total, total_discount, title, summary, branding_theme_id, updated_date_utc, line_amount_types, status_attribute_string, validation_errors].hash
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
