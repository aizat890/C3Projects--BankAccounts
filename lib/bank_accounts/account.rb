require 'pry'

module BankAccounts
  class Account

    attr_reader :balance

    def initialize(id, initial_balance)
      @id = id
      @balance = initial_balance

      # Raises an error if the initial balance is negative
      if initial_balance < 0
        raise ArgumentError.new "Sorry, you can't have a negative balance."
      end
    end

    def withdraw(amount)

      # Raises warning message if withdraw amount is greater than present balance
      if amount > @balance
        raise ArgumentError.new "WARNING you have overdrawn your account. Your balance is #{@balance}."
      
      # Return the updated balance once money is withdrawn from the account
      else
        @balance -= amount
        return @balance
      end
    end

    def deposit(amount)
      # Returns the updated balance once money is deposited into the account
      @balance += amount
      return @balance
    end

  end # class
end # module
