#!/usr/bin/env ruby
require 'csv'
require 'set'

# Replace wallet addresses below with your own address(es) of wallets.
# Use quotation marks for each individual wallet and separate them with commas.
def myAddresses
  return [
    "0x0000000000000000000000000000000000000001",
    "0x000000000799a08e40de98f85f28aecea4e2c006",
  ].map { |item| item.downcase }
end

def loadBlacklistedAddresses(filename="initialList.csv")
  file = ARGV[0].nil? ? filename : ARGV[0]
  return CSV.read(file).flatten.map { |item| item.downcase }
end

def checkBlacklistedAddresses
  puts "Checking addresses, fingers crossed 🤞"
  blacklistedAddresses = loadBlacklistedAddresses.to_set
  blacklisted = myAddresses.filter { |myAddress|
    blacklistedAddresses.include? myAddress
  }
  puts "Finished checking addresses 🏁"

  if blacklisted.empty?
    puts "Congratulations 🎉 The script has found 0 blacklisted addresses."
  else
    puts "F*ck you 🐧"
    puts "Unfortunately, found #{blacklisted.count} blacklisted addresses:"
    puts blacklisted
  end
end

checkBlacklistedAddresses
