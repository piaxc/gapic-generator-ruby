# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

require "google/gax"
require "google/gax/config"
require "google/gax/config/method"

require "google/showcase/version"
require "google/showcase/v1alpha3/testing_pb"
require "google/showcase/v1alpha3/testing/credentials"
require "google/showcase/v1alpha3/testing/paths"

module Google
  module Showcase
    module V1alpha3
      module Testing
        # Service that implements Testing API.
        class Client
          include Paths

          # @private
          attr_reader :testing_stub

          ##
          # Configuration for the Testing Client API.
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def self.configure
            @configure ||= Client::Configuration.new
            yield @configure if block_given?
            @configure
          end

          ##
          # Configure the Testing Client instance.
          #
          # The configuration is set to the derived mode, meaning that values can be changed,
          # but structural changes (adding new fields, etc.) are not allowed. Structural changes
          # should be made on {Client.configure}.
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def configure
            yield @config if block_given?
            @config
          end

          ##
          # Create a new Client client object.
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          def initialize
            # These require statements are intentionally placed here to initialize
            # the gRPC module only when it's required.
            # See https://github.com/googleapis/toolkit/issues/446
            require "google/gax/grpc"
            require "google/showcase/v1alpha3/testing_services_pb"

            # Create the configuration object
            @config = Configuration.new Client.configure

            # Yield the configuration if needed
            yield @config if block_given?

            # Create credentials
            credentials = @config.credentials
            credentials ||= Credentials.default scope: @config.scope
            if credentials.is_a?(String) || credentials.is_a?(Hash)
              credentials = Credentials.new credentials, scope: @config.scope
            end


            @testing_stub = Google::Gax::Grpc::Stub.new(
              Google::Showcase::V1alpha3::Testing::Stub,
              credentials:  credentials,
              host:         @config.host,
              port:         @config.port,
              interceptors: @config.interceptors
            )
          end

          # Service calls

          ##
          # Creates a new testing session.
          #
          # @overload create_session(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::CreateSessionRequest | Hash]
          #     Creates a new testing session.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload create_session(session: nil, options: nil)
          #   @param session [Google::Showcase::V1alpha3::Session | Hash]
          #     The session to be created.
          #     Sessions are immutable once they are created (although they can
          #     be deleted).
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Showcase::V1alpha3::Session]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Showcase::V1alpha3::Session]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def create_session request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::CreateSessionRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.create_session.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            options.apply_defaults timeout:      @config.rpcs.create_session.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.create_session.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @create_session ||= Google::Gax::ApiCall.new @testing_stub.method :create_session

            @create_session.call request, options: options, operation_callback: block
          end

          ##
          # Gets a testing session.
          #
          # @overload get_session(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::GetSessionRequest | Hash]
          #     Gets a testing session.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload get_session(name: nil, options: nil)
          #   @param name [String]
          #     The session to be retrieved.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Showcase::V1alpha3::Session]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Showcase::V1alpha3::Session]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def get_session request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::GetSessionRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.get_session.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.get_session.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.get_session.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @get_session ||= Google::Gax::ApiCall.new @testing_stub.method :get_session

            @get_session.call request, options: options, operation_callback: block
          end

          ##
          # Lists the current test sessions.
          #
          # @overload list_sessions(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::ListSessionsRequest | Hash]
          #     Lists the current test sessions.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload list_sessions(page_size: nil, page_token: nil, options: nil)
          #   @param page_size [Integer]
          #     The maximum number of sessions to return per page.
          #   @param page_token [String]
          #     The page token, for retrieving subsequent pages.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Gax::PagedEnumerable<Google::Showcase::V1alpha3::Session>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Gax::PagedEnumerable<Google::Showcase::V1alpha3::Session>]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def list_sessions request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::ListSessionsRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.list_sessions.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            options.apply_defaults timeout:      @config.rpcs.list_sessions.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.list_sessions.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @list_sessions ||= Google::Gax::ApiCall.new @testing_stub.method :list_sessions

            wrap_paged_enum = ->(response) { Google::Gax::PagedEnumerable.new @list_sessions, request, response, options }

            @list_sessions.call request, options: options, operation_callback: block, format_response: wrap_paged_enum
          end

          ##
          # Delete a test session.
          #
          # @overload delete_session(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::DeleteSessionRequest | Hash]
          #     Delete a test session.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload delete_session(name: nil, options: nil)
          #   @param name [String]
          #     The session to be deleted.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Protobuf::Empty]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Protobuf::Empty]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def delete_session request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::DeleteSessionRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.delete_session.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.delete_session.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.delete_session.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @delete_session ||= Google::Gax::ApiCall.new @testing_stub.method :delete_session

            @delete_session.call request, options: options, operation_callback: block
          end

          ##
          # Report on the status of a session.
          # This generates a report detailing which tests have been completed,
          # and an overall rollup.
          #
          # @overload report_session(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::ReportSessionRequest | Hash]
          #     Report on the status of a session.
          #     This generates a report detailing which tests have been completed,
          #     and an overall rollup.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload report_session(name: nil, options: nil)
          #   @param name [String]
          #     The session to be reported on.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Showcase::V1alpha3::ReportSessionResponse]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Showcase::V1alpha3::ReportSessionResponse]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def report_session request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::ReportSessionRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.report_session.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.report_session.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.report_session.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @report_session ||= Google::Gax::ApiCall.new @testing_stub.method :report_session

            @report_session.call request, options: options, operation_callback: block
          end

          ##
          # List the tests of a sessesion.
          #
          # @overload list_tests(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::ListTestsRequest | Hash]
          #     List the tests of a sessesion.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload list_tests(parent: nil, page_size: nil, page_token: nil, options: nil)
          #   @param parent [String]
          #     The session.
          #   @param page_size [Integer]
          #     The maximum number of tests to return per page.
          #   @param page_token [String]
          #     The page token, for retrieving subsequent pages.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Gax::PagedEnumerable<Google::Showcase::V1alpha3::Test>]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Gax::PagedEnumerable<Google::Showcase::V1alpha3::Test>]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def list_tests request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::ListTestsRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.list_tests.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.list_tests.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.list_tests.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @list_tests ||= Google::Gax::ApiCall.new @testing_stub.method :list_tests

            wrap_paged_enum = ->(response) { Google::Gax::PagedEnumerable.new @list_tests, request, response, options }

            @list_tests.call request, options: options, operation_callback: block, format_response: wrap_paged_enum
          end

          ##
          # Explicitly decline to implement a test.
          #
          # This removes the test from subsequent `ListTests` calls, and
          # attempting to do the test will error.
          #
          # This method will error if attempting to delete a required test.
          #
          # @overload delete_test(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::DeleteTestRequest | Hash]
          #     Explicitly decline to implement a test.
          #
          #     This removes the test from subsequent `ListTests` calls, and
          #     attempting to do the test will error.
          #
          #     This method will error if attempting to delete a required test.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload delete_test(name: nil, options: nil)
          #   @param name [String]
          #     The test to be deleted.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Protobuf::Empty]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Protobuf::Empty]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def delete_test request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::DeleteTestRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.delete_test.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.delete_test.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.delete_test.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @delete_test ||= Google::Gax::ApiCall.new @testing_stub.method :delete_test

            @delete_test.call request, options: options, operation_callback: block
          end

          ##
          # Register a response to a test.
          #
          # In cases where a test involves registering a final answer at the
          # end of the test, this method provides the means to do so.
          #
          # @overload verify_test(request, options: nil)
          #   @param request [Google::Showcase::V1alpha3::VerifyTestRequest | Hash]
          #     Register a response to a test.
          #
          #     In cases where a test involves registering a final answer at the
          #     end of the test, this method provides the means to do so.
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @overload verify_test(name: nil, answer: nil, answers: nil, options: nil)
          #   @param name [String]
          #     The test to have an answer registered to it.
          #   @param answer [String]
          #     The answer from the test.
          #   @param answers [String]
          #     The answers from the test if multiple are to be checked
          #   @param options [Google::Gax::ApiCall::Options, Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries, etc.
          #
          # @yield [response, operation] Access the result along with the RPC operation
          # @yieldparam response [Google::Showcase::V1alpha3::VerifyTestResponse]
          # @yieldparam operation [GRPC::ActiveCall::Operation]
          #
          # @return [Google::Showcase::V1alpha3::VerifyTestResponse]
          # @raise [Google::Gax::GaxError] if the RPC is aborted.
          # @example
          #   TODO
          #
          def verify_test request = nil, options: nil, **request_fields, &block
            raise ArgumentError, "request must be provided" if request.nil? && request_fields.empty?
            if !request.nil? && !request_fields.empty?
              raise ArgumentError, "cannot pass both request object and named arguments"
            end

            request ||= request_fields
            request = Google::Gax::Protobuf.coerce request, to: Google::Showcase::V1alpha3::VerifyTestRequest

            # Converts hash and nil to an options object
            options = Google::Gax::ApiCall::Options.new options.to_h if options.respond_to? :to_h

            # Customize the options with defaults
            metadata = @config.rpcs.verify_test.metadata.to_h

            x_goog_api_client_header = ["gl-ruby/#{RUBY_VERSION}"]
            x_goog_api_client_header << "#{@config.lib_name}/#{@config.lib_version}" if @config.lib_name
            x_goog_api_client_header << "gapic/#{Google::Showcase::VERSION}"
            x_goog_api_client_header << "gax/#{Google::Gax::VERSION}"
            x_goog_api_client_header << "grpc/#{GRPC::VERSION}"
            metadata[:"x-goog-api-client"] ||= x_goog_api_client_header.join " "

            header_params = {
              "name" => request.name
            }
            request_params_header = header_params.map { |k, v| "#{k}=#{v}" }.join("&")
            metadata[:"x-goog-request-params"] ||= request_params_header

            options.apply_defaults timeout:      @config.rpcs.verify_test.timeout,
                                   metadata:     metadata,
                                   retry_policy: @config.rpcs.verify_test.retry_policy
            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @verify_test ||= Google::Gax::ApiCall.new @testing_stub.method :verify_test

            @verify_test.call request, options: options, operation_callback: block
          end

          class Configuration
            extend Google::Gax::Config

            config_attr :host,         "localhost", String
            config_attr :port,         7469, Integer
            config_attr :credentials,  nil do |value|
              allowed = [::String, ::Hash, ::Proc, ::Google::Auth::Credentials, nil]
              allowed += [::GRPC::Core::Channel, ::GRPC::Core::ChannelCredentials] if defined? ::GRPC
              allowed.any? { |klass| klass === value }
            end
            config_attr :scope,        nil,                                   String, Array, nil
            config_attr :lib_name,     nil,                                   String, nil
            config_attr :lib_version,  nil,                                   String, nil
            config_attr :interceptors, [],                                    Array
            config_attr :timeout,      nil,                                   Numeric, nil
            config_attr :metadata,     nil,                                   Hash, nil
            config_attr :retry_policy, nil,                                   Hash, Proc, nil

            def initialize parent_config = nil
              @parent_config = parent_config unless parent_config.nil?

              yield self if block_given?
            end

            def rpcs
              @rpcs ||= begin
                parent_rpcs = nil
                parent_rpcs = @parent_config.rpcs if @parent_config&.respond_to? :rpcs
                Rpcs.new parent_rpcs
              end
            end

            class Rpcs
              attr_reader :create_session
              attr_reader :get_session
              attr_reader :list_sessions
              attr_reader :delete_session
              attr_reader :report_session
              attr_reader :list_tests
              attr_reader :delete_test
              attr_reader :verify_test

              def initialize parent_rpcs = nil
                create_session_config = nil
                create_session_config = parent_rpcs&.create_session if parent_rpcs&.respond_to? :create_session
                @create_session = Google::Gax::Config::Method.new create_session_config
                get_session_config = nil
                get_session_config = parent_rpcs&.get_session if parent_rpcs&.respond_to? :get_session
                @get_session = Google::Gax::Config::Method.new get_session_config
                list_sessions_config = nil
                list_sessions_config = parent_rpcs&.list_sessions if parent_rpcs&.respond_to? :list_sessions
                @list_sessions = Google::Gax::Config::Method.new list_sessions_config
                delete_session_config = nil
                delete_session_config = parent_rpcs&.delete_session if parent_rpcs&.respond_to? :delete_session
                @delete_session = Google::Gax::Config::Method.new delete_session_config
                report_session_config = nil
                report_session_config = parent_rpcs&.report_session if parent_rpcs&.respond_to? :report_session
                @report_session = Google::Gax::Config::Method.new report_session_config
                list_tests_config = nil
                list_tests_config = parent_rpcs&.list_tests if parent_rpcs&.respond_to? :list_tests
                @list_tests = Google::Gax::Config::Method.new list_tests_config
                delete_test_config = nil
                delete_test_config = parent_rpcs&.delete_test if parent_rpcs&.respond_to? :delete_test
                @delete_test = Google::Gax::Config::Method.new delete_test_config
                verify_test_config = nil
                verify_test_config = parent_rpcs&.verify_test if parent_rpcs&.respond_to? :verify_test
                @verify_test = Google::Gax::Config::Method.new verify_test_config

                yield self if block_given?
              end
            end
          end
        end
      end
    end
  end
end

# rubocop:disable Lint/HandleExceptions

# Once client is loaded, load helpers.rb if it exists.
begin
  require "google/showcase/v1alpha3/testing/helpers"
rescue LoadError
end

# rubocop:enable Lint/HandleExceptions