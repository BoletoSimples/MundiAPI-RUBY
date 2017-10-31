# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

module MundiApi
  # Split
  class CreateSplitRequest < BaseModel
    # Split type
    # @return [String]
    attr_accessor :type

    # Amount
    # @return [Integer]
    attr_accessor :amount

    # Recipient id
    # @return [String]
    attr_accessor :recipient_id

    # A mapping from model property names to API property names.
    def self.names
      if @_hash.nil?
        @_hash = {}
        @_hash['type'] = 'type'
        @_hash['amount'] = 'amount'
        @_hash['recipient_id'] = 'recipient_id'
      end
      @_hash
    end

    def initialize(type = nil,
                   amount = nil,
                   recipient_id = nil)
      @type = type
      @amount = amount
      @recipient_id = recipient_id
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash['type']
      amount = hash['amount']
      recipient_id = hash['recipient_id']

      # Create object from extracted values.
      CreateSplitRequest.new(type,
                             amount,
                             recipient_id)
    end
  end
end
