# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: binlogservice.proto for package 'binlogservice'

require 'grpc'
require 'binlogservice'

module Binlogservice
  module UpdateStream

    # TODO: add proto service documentation here
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'binlogservice.UpdateStream'

      rpc :StreamUpdate, StreamUpdateRequest, stream(StreamUpdateResponse)
      rpc :StreamKeyRange, StreamKeyRangeRequest, stream(StreamKeyRangeResponse)
      rpc :StreamTables, StreamTablesRequest, stream(StreamTablesResponse)
    end

    Stub = Service.rpc_stub_class
  end
end
