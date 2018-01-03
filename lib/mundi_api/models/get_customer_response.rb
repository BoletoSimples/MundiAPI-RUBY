# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module MundiApi
  # Response object for getting a customer
  class GetCustomerResponse < BaseModel
    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :id

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :email

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :delinquent

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :created_at

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :document

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :type

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :fb_access_token

    # TODO: Write general description for this method
    # @return [GetAddressResponse]
    attr_accessor :address

    # TODO: Write general description for this method
    # @return [Array<String, String>]
    attr_accessor :metadata

    # TODO: Write general description for this method
    # @return [GetPhonesResponse]
    attr_accessor :phones

    # Código de referência do cliente no sistema da loja. Max: 52 caracteres
    # @return [String]
    attr_accessor :code

    # Código de referência do cliente no sistema da loja. Max: 52 caracteres
    # @return [Long]
    attr_accessor :fb_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['delinquent'] = 'delinquent'
      @_hash['created_at'] = 'created_at'
      @_hash['updated_at'] = 'updated_at'
      @_hash['document'] = 'document'
      @_hash['type'] = 'type'
      @_hash['fb_access_token'] = 'fb_access_token'
      @_hash['address'] = 'address'
      @_hash['metadata'] = 'metadata'
      @_hash['phones'] = 'phones'
      @_hash['code'] = 'code'
      @_hash['fb_id'] = 'fb_id'
      @_hash
    end

    def initialize(id = nil,
                   name = nil,
                   email = nil,
                   delinquent = nil,
                   created_at = nil,
                   updated_at = nil,
                   document = nil,
                   type = nil,
                   fb_access_token = nil,
                   address = nil,
                   metadata = nil,
                   phones = nil,
                   code = nil,
                   fb_id = nil)
      @id = id
      @name = name
      @email = email
      @delinquent = delinquent
      @created_at = created_at
      @updated_at = updated_at
      @document = document
      @type = type
      @fb_access_token = fb_access_token
      @address = address
      @metadata = metadata
      @phones = phones
      @code = code
      @fb_id = fb_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash['id']
      name = hash['name']
      email = hash['email']
      delinquent = hash['delinquent']
      created_at = DateTime.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = DateTime.rfc3339(hash['updated_at']) if hash['updated_at']
      document = hash['document']
      type = hash['type']
      fb_access_token = hash['fb_access_token']
      address = GetAddressResponse.from_hash(hash['address']) if
        hash['address']
      metadata = hash['metadata']
      phones = GetPhonesResponse.from_hash(hash['phones']) if hash['phones']
      code = hash['code']
      fb_id = hash['fb_id']

      # Create object from extracted values.
      GetCustomerResponse.new(id,
                              name,
                              email,
                              delinquent,
                              created_at,
                              updated_at,
                              document,
                              type,
                              fb_access_token,
                              address,
                              metadata,
                              phones,
                              code,
                              fb_id)
    end
  end
end
