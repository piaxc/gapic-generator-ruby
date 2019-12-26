# frozen_string_literal: true

# Copyright 2018 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require "minitest/autorun"

require "gapic/grpc/service_stub"

require "google/cloud/vision/v1/product_search_service_pb"
require "google/cloud/vision/v1/product_search_service_services_pb"
require "google/cloud/vision/v1/product_search"

class Google::Cloud::Vision::V1::ProductSearch::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
    end

    def call_rpc *args
      @call_rpc_count += 1

      @block&.call *args

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_product_set
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ProductSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    product_set = {}
    product_set_id = "hello world"

    create_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_product_set, name
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::ProductSet), request.product_set
      assert_equal "hello world", request.product_set_id
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_product_set({ parent: parent, product_set: product_set, product_set_id: product_set_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_product_set parent: parent, product_set: product_set, product_set_id: product_set_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_product_set Google::Cloud::Vision::V1::CreateProductSetRequest.new(parent: parent, product_set: product_set, product_set_id: product_set_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_product_set({ parent: parent, product_set: product_set, product_set_id: product_set_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_product_set Google::Cloud::Vision::V1::CreateProductSetRequest.new(parent: parent, product_set: product_set, product_set_id: product_set_id), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_product_set_client_stub.call_rpc_count
    end
  end

  def test_list_product_sets
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ListProductSetsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_product_sets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_product_sets, name
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_product_sets_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_product_sets({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_product_sets parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_product_sets Google::Cloud::Vision::V1::ListProductSetsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_product_sets({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_product_sets Google::Cloud::Vision::V1::ListProductSetsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_product_sets_client_stub.call_rpc_count
    end
  end

  def test_get_product_set
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ProductSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    get_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_product_set, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_product_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_product_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_product_set Google::Cloud::Vision::V1::GetProductSetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_product_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_product_set Google::Cloud::Vision::V1::GetProductSetRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_product_set_client_stub.call_rpc_count
    end
  end

  def test_update_product_set
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ProductSet.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    product_set = {}
    update_mask = {}

    update_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_product_set, name
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::ProductSet), request.product_set
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_product_set({ product_set: product_set, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_product_set product_set: product_set, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_product_set Google::Cloud::Vision::V1::UpdateProductSetRequest.new(product_set: product_set, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_product_set({ product_set: product_set, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_product_set Google::Cloud::Vision::V1::UpdateProductSetRequest.new(product_set: product_set, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_product_set_client_stub.call_rpc_count
    end
  end

  def test_delete_product_set
    # Create GRPC objects
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    delete_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_product_set, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_product_set({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_product_set name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_product_set Google::Cloud::Vision::V1::DeleteProductSetRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_product_set({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_product_set Google::Cloud::Vision::V1::DeleteProductSetRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_product_set_client_stub.call_rpc_count
    end
  end

  def test_create_product
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    product = {}
    product_id = "hello world"

    create_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_product, name
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::Product), request.product
      assert_equal "hello world", request.product_id
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_product_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_product({ parent: parent, product: product, product_id: product_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_product parent: parent, product: product, product_id: product_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_product Google::Cloud::Vision::V1::CreateProductRequest.new(parent: parent, product: product, product_id: product_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_product({ parent: parent, product: product, product_id: product_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_product Google::Cloud::Vision::V1::CreateProductRequest.new(parent: parent, product: product, product_id: product_id), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_product_client_stub.call_rpc_count
    end
  end

  def test_list_products
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ListProductsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_products_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_products, name
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_products_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_products({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_products parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_products Google::Cloud::Vision::V1::ListProductsRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_products({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_products Google::Cloud::Vision::V1::ListProductsRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_products_client_stub.call_rpc_count
    end
  end

  def test_get_product
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    get_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_product, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_product_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_product({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_product name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_product Google::Cloud::Vision::V1::GetProductRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_product({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_product Google::Cloud::Vision::V1::GetProductRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_product_client_stub.call_rpc_count
    end
  end

  def test_update_product
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::Product.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    product = {}
    update_mask = {}

    update_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_product, name
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::Product), request.product
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::FieldMask), request.update_mask
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_product_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_product({ product: product, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_product product: product, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_product Google::Cloud::Vision::V1::UpdateProductRequest.new(product: product, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_product({ product: product, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_product Google::Cloud::Vision::V1::UpdateProductRequest.new(product: product, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_product_client_stub.call_rpc_count
    end
  end

  def test_delete_product
    # Create GRPC objects
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    delete_product_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_product, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_product_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_product({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_product name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_product Google::Cloud::Vision::V1::DeleteProductRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_product({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_product Google::Cloud::Vision::V1::DeleteProductRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_product_client_stub.call_rpc_count
    end
  end

  def test_create_reference_image
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ReferenceImage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    reference_image = {}
    reference_image_id = "hello world"

    create_reference_image_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_reference_image, name
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::ReferenceImage), request.reference_image
      assert_equal "hello world", request.reference_image_id
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_reference_image_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_reference_image({ parent: parent, reference_image: reference_image, reference_image_id: reference_image_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_reference_image parent: parent, reference_image: reference_image, reference_image_id: reference_image_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_reference_image Google::Cloud::Vision::V1::CreateReferenceImageRequest.new(parent: parent, reference_image: reference_image, reference_image_id: reference_image_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_reference_image({ parent: parent, reference_image: reference_image, reference_image_id: reference_image_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_reference_image Google::Cloud::Vision::V1::CreateReferenceImageRequest.new(parent: parent, reference_image: reference_image, reference_image_id: reference_image_id), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_reference_image_client_stub.call_rpc_count
    end
  end

  def test_delete_reference_image
    # Create GRPC objects
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    delete_reference_image_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_reference_image, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_reference_image_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_reference_image({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_reference_image name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_reference_image Google::Cloud::Vision::V1::DeleteReferenceImageRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_reference_image({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_reference_image Google::Cloud::Vision::V1::DeleteReferenceImageRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_reference_image_client_stub.call_rpc_count
    end
  end

  def test_list_reference_images
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ListReferenceImagesResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    page_size = 42
    page_token = "hello world"

    list_reference_images_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_reference_images, name
      assert_equal "hello world", request.parent
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_reference_images_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_reference_images({ parent: parent, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_reference_images parent: parent, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_reference_images Google::Cloud::Vision::V1::ListReferenceImagesRequest.new(parent: parent, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_reference_images({ parent: parent, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_reference_images Google::Cloud::Vision::V1::ListReferenceImagesRequest.new(parent: parent, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_reference_images_client_stub.call_rpc_count
    end
  end

  def test_get_reference_image
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ReferenceImage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"

    get_reference_image_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_reference_image, name
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_reference_image_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_reference_image({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_reference_image name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_reference_image Google::Cloud::Vision::V1::GetReferenceImageRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_reference_image({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_reference_image Google::Cloud::Vision::V1::GetReferenceImageRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_reference_image_client_stub.call_rpc_count
    end
  end

  def test_add_product_to_product_set
    # Create GRPC objects
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"
    product = "hello world"

    add_product_to_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :add_product_to_product_set, name
      assert_equal "hello world", request.name
      assert_equal "hello world", request.product
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, add_product_to_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.add_product_to_product_set({ name: name, product: product }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.add_product_to_product_set name: name, product: product do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.add_product_to_product_set Google::Cloud::Vision::V1::AddProductToProductSetRequest.new(name: name, product: product) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.add_product_to_product_set({ name: name, product: product }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.add_product_to_product_set Google::Cloud::Vision::V1::AddProductToProductSetRequest.new(name: name, product: product), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, add_product_to_product_set_client_stub.call_rpc_count
    end
  end

  def test_remove_product_from_product_set
    # Create GRPC objects
    grpc_response = Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"
    product = "hello world"

    remove_product_from_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :remove_product_from_product_set, name
      assert_equal "hello world", request.name
      assert_equal "hello world", request.product
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, remove_product_from_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.remove_product_from_product_set({ name: name, product: product }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.remove_product_from_product_set name: name, product: product do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.remove_product_from_product_set Google::Cloud::Vision::V1::RemoveProductFromProductSetRequest.new(name: name, product: product) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.remove_product_from_product_set({ name: name, product: product }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.remove_product_from_product_set Google::Cloud::Vision::V1::RemoveProductFromProductSetRequest.new(name: name, product: product), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, remove_product_from_product_set_client_stub.call_rpc_count
    end
  end

  def test_list_products_in_product_set
    # Create GRPC objects
    grpc_response = Google::Cloud::Vision::V1::ListProductsInProductSetResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    name = "hello world"
    page_size = 42
    page_token = "hello world"

    list_products_in_product_set_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_products_in_product_set, name
      assert_equal "hello world", request.name
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_products_in_product_set_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_products_in_product_set({ name: name, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_products_in_product_set name: name, page_size: page_size, page_token: page_token do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_products_in_product_set Google::Cloud::Vision::V1::ListProductsInProductSetRequest.new(name: name, page_size: page_size, page_token: page_token) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_products_in_product_set({ name: name, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_products_in_product_set Google::Cloud::Vision::V1::ListProductsInProductSetRequest.new(name: name, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_equal @mock_page_enum, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_products_in_product_set_client_stub.call_rpc_count
    end
  end

  def test_import_product_sets
    # Create GRPC objects
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    parent = "hello world"
    input_config = {}

    import_product_sets_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_product_sets, name
      assert_equal "hello world", request.parent
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::ImportProductSetsInputConfig), request.input_config
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_product_sets_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_product_sets({ parent: parent, input_config: input_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_product_sets parent: parent, input_config: input_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_product_sets Google::Cloud::Vision::V1::ImportProductSetsRequest.new(parent: parent, input_config: input_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_product_sets({ parent: parent, input_config: input_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_product_sets Google::Cloud::Vision::V1::ImportProductSetsRequest.new(parent: parent, input_config: input_config), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_product_sets_client_stub.call_rpc_count
    end
  end

  def test_purge_products
    # Create GRPC objects
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters
    product_set_purge_config = {}

    purge_products_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :purge_products, name
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Cloud::Vision::V1::ProductSetPurgeConfig), request.product_set_purge_config
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, purge_products_client_stub do
      # Create client
      client = Google::Cloud::Vision::V1::ProductSearch::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.purge_products({ product_set_purge_config: product_set_purge_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.purge_products product_set_purge_config: product_set_purge_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.purge_products Google::Cloud::Vision::V1::PurgeProductsRequest.new(product_set_purge_config: product_set_purge_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.purge_products({ product_set_purge_config: product_set_purge_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.purge_products Google::Cloud::Vision::V1::PurgeProductsRequest.new(product_set_purge_config: product_set_purge_config), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, purge_products_client_stub.call_rpc_count
    end
  end
end
