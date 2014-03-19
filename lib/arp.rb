require "arp/version"
require 'forwardable'
require 'ostruct'

module Arp
  class Cache
    include Enumerable

    extend Forwardable
    def_delegators :collection, :each, :<<, :size
    

    attr_reader :path

    def initialize(path = "/proc/net/arp")
      raise ArgumentError, "No such file: #{path}" unless File.exists?(path)
      @path = path
    end

    def collection
      @collection ||= File.open(@path) do |f|
        f.readlines[1..-1].map do |line|
          columns = line.split(/\s+/)
          ip, hw_type, flags, hw_address, mask, device = *columns
          OpenStruct.new(ip: ip,
                         hw_type: hw_type,
                         flags: flags,
                         hw_address: hw_address,
                         mask: mask,
                         device: device)
        end
      end
    end
  end
end
