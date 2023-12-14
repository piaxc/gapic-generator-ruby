# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/tools/snippetgen/configlanguage/v1/snippet_config_language.proto

require 'google/protobuf'

require 'google/protobuf/descriptor_pb'


descriptor_data = "\nMgoogle/cloud/tools/snippetgen/configlanguage/v1/snippet_config_language.proto\x12/google.cloud.tools.snippetgen.configlanguage.v1\x1a google/protobuf/descriptor.proto\"\xcd\x02\n\rSnippetConfig\x12X\n\x08metadata\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.SnippetConfigMetadata\x12\x41\n\x03rpc\x18\x02 \x01(\x0b\x32\x34.google.cloud.tools.snippetgen.configlanguage.v1.Rpc\x12T\n\tsignature\x18\x03 \x01(\x0b\x32\x41.google.cloud.tools.snippetgen.configlanguage.v1.SnippetSignature\x12I\n\x07snippet\x18\x04 \x01(\x0b\x32\x38.google.cloud.tools.snippetgen.configlanguage.v1.Snippet\"\xd3\x01\n\x15SnippetConfigMetadata\x12\x0f\n\x07skipped\x18\x01 \x01(\x08\x12\x63\n\x11skipped_languages\x18\x02 \x03(\x0e\x32H.google.cloud.tools.snippetgen.configlanguage.v1.GeneratorOutputLanguage\x12\x11\n\tconfig_id\x18\x03 \x01(\t\x12\x14\n\x0csnippet_name\x18\x04 \x01(\t\x12\x1b\n\x13snippet_description\x18\x05 \x01(\t\"Y\n\x03Rpc\x12\x15\n\rproto_package\x18\x01 \x01(\t\x12\x13\n\x0b\x61pi_version\x18\x02 \x03(\t\x12\x14\n\x0cservice_name\x18\x03 \x01(\t\x12\x10\n\x08rpc_name\x18\x04 \x01(\t\"\x99\x03\n\x10SnippetSignature\x12\x1b\n\x13snippet_method_name\x18\x01 \x01(\t\x12J\n\x0breturn_type\x18\x02 \x01(\x0b\x32\x35.google.cloud.tools.snippetgen.configlanguage.v1.Type\x12i\n\x0fsync_preference\x18\x03 \x01(\x0e\x32P.google.cloud.tools.snippetgen.configlanguage.v1.SnippetSignature.SyncPreference\x12Z\n\nparameters\x18\x04 \x03(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration\"U\n\x0eSyncPreference\x12\x16\n\x12LANGUAGE_PREFERRED\x10\x00\x12\x10\n\x0cPREFER_ASYNC\x10\x01\x12\x0f\n\x0bPREFER_SYNC\x10\x02\x12\x08\n\x04\x42OTH\x10\x03\"\x91,\n\x07Snippet\x12t\n\x1dservice_client_initialization\x18\x01 \x01(\x0b\x32M.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization\x12U\n\x08standard\x18\x02 \x01(\x0b\x32\x41.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StandardH\x00\x12W\n\tpaginated\x18\x03 \x01(\x0b\x32\x42.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedH\x00\x12K\n\x03lro\x18\x04 \x01(\x0b\x32<.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.LroH\x00\x12\x64\n\x10\x63lient_streaming\x18\x05 \x01(\x0b\x32H.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientStreamingH\x00\x12\x64\n\x10server_streaming\x18\x06 \x01(\x0b\x32H.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ServerStreamingH\x00\x12`\n\x0e\x62idi_streaming\x18\x07 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.BidiStreamingH\x00\x12T\n\x10\x66inal_statements\x18\x08 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x1a\xff\x03\n\x14\x43lientInitialization\x12]\n\x19pre_client_initialization\x18\x01 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x12~\n\x17\x63ustom_service_endpoint\x18\x02 \x01(\x0b\x32].google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization.ServiceEndpoint\x1a\x87\x02\n\x0fServiceEndpoint\x12\x83\x01\n\x06schema\x18\x01 \x01(\x0e\x32s.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization.ServiceEndpoint.ServiceEndpointSchema\x12\x0c\n\x04host\x18\x02 \x01(\t\x12\x0e\n\x06region\x18\x03 \x01(\t\x12\x0c\n\x04port\x18\x04 \x01(\x05\"B\n\x15ServiceEndpointSchema\x12\x14\n\x10LANGUAGE_DEFAULT\x10\x00\x12\t\n\x05HTTPS\x10\x01\x12\x08\n\x04HTTP\x10\x02\x1a\xbf\x02\n\x08Standard\x12t\n\x16request_initialization\x18\x01 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x12Q\n\x04\x63\x61ll\x18\x02 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12j\n\x11response_handling\x18\x03 \x01(\x0b\x32O.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleResponseHandling\x1a\xce\x02\n\tPaginated\x12t\n\x16request_initialization\x18\x01 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x12[\n\x0epaginated_call\x18\x02 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12n\n\x12paginated_handling\x18\x03 \x01(\x0b\x32R.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling\x1a\xb2\x02\n\x03Lro\x12t\n\x16request_initialization\x18\x01 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x12Q\n\x04\x63\x61ll\x18\x02 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12\x62\n\x0clro_handling\x18\x03 \x01(\x0b\x32L.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.LroResponseHandling\x1a\xf4\x02\n\x0f\x43lientStreaming\x12`\n\x13initialization_call\x18\x01 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12\x1a\n\x12\x63lient_stream_name\x18\x02 \x01(\t\x12w\n\x16request_initialization\x18\x03 \x01(\x0b\x32W.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingRequestInitialization\x12j\n\x11response_handling\x18\x04 \x01(\x0b\x32O.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleResponseHandling\x1a\xf4\x02\n\x0fServerStreaming\x12t\n\x16request_initialization\x18\x01 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x12`\n\x13initialization_call\x18\x02 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12\x1a\n\x12server_stream_name\x18\x03 \x01(\t\x12m\n\x11response_handling\x18\x04 \x01(\x0b\x32R.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingResponseHandling\x1a\x91\x03\n\rBidiStreaming\x12`\n\x13initialization_call\x18\x01 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\x12\x1a\n\x12\x63lient_stream_name\x18\x02 \x01(\t\x12w\n\x16request_initialization\x18\x03 \x01(\x0b\x32W.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingRequestInitialization\x12\x1a\n\x12server_stream_name\x18\x04 \x01(\t\x12m\n\x11response_handling\x18\x05 \x01(\x0b\x32R.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingResponseHandling\x1aZ\n\nClientCall\x12L\n\x08pre_call\x18\x02 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x1a\xe7\x01\n\x1bSimpleRequestInitialization\x12^\n\x1apre_request_initialization\x18\x01 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x12R\n\rrequest_value\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12\x14\n\x0crequest_name\x18\x03 \x01(\t\x1a\xe1\x02\n\x1eStreamingRequestInitialization\x12u\n\x17\x66irst_streaming_request\x18\x01 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x12W\n\titeration\x18\x03 \x01(\x0b\x32\x44.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration\x12o\n\x11streaming_request\x18\x04 \x01(\x0b\x32T.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization\x1a/\n\x16SimpleResponseHandling\x12\x15\n\rresponse_name\x18\x01 \x01(\t\x1a\xec\x07\n\x19PaginatedResponseHandling\x12\x15\n\rresponse_name\x18\x01 \x01(\t\x12l\n\x07\x62y_item\x18\x02 \x01(\x0b\x32Y.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByItemH\x00\x12l\n\x07\x62y_page\x18\x03 \x01(\x0b\x32Y.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByPageH\x00\x12{\n\x0fnext_page_token\x18\x04 \x01(\x0b\x32`.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.NextPageTokenH\x00\x1at\n\x06\x42yItem\x12\x11\n\titem_name\x18\x01 \x01(\t\x12W\n\x13per_item_statements\x18\x02 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x1a\xe0\x01\n\x06\x42yPage\x12\x11\n\tpage_name\x18\x01 \x01(\t\x12W\n\x13per_page_statements\x18\x02 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x12j\n\x07\x62y_item\x18\x03 \x01(\x0b\x32Y.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByItem\x1a\xf2\x01\n\rNextPageToken\x12\x1c\n\x14next_page_token_name\x18\x01 \x01(\t\x12W\n\x12\x65xplicit_page_size\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12j\n\x07\x62y_page\x18\x03 \x01(\x0b\x32Y.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByPageB\x11\n\x0fpagination_kind\x1a\xcf\x02\n\x13LroResponseHandling\x12\x15\n\rresponse_name\x18\x01 \x01(\t\x12n\n\x0cpolling_type\x18\x02 \x01(\x0e\x32X.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.LroResponseHandling.PollingType\x12\x1d\n\x15polling_response_name\x18\x03 \x01(\t\x12Y\n\x0cpolling_call\x18\x04 \x01(\x0b\x32\x43.google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall\"7\n\x0bPollingType\x12\x14\n\x10UNTIL_COMPLETION\x10\x00\x12\x08\n\x04ONCE\x10\x01\x12\x08\n\x04NONE\x10\x02\x1a\x9e\x01\n\x19StreamingResponseHandling\x12\x1d\n\x15\x63urrent_response_name\x18\x01 \x01(\t\x12\x62\n\x1eper_stream_response_statements\x18\x02 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.StatementB\x06\n\x04\x63\x61ll\"\xc5\x18\n\tStatement\x12]\n\x0b\x64\x65\x63laration\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.DeclarationH\x00\x12\x64\n\x0fstandard_output\x18\x02 \x01(\x0b\x32I.google.cloud.tools.snippetgen.configlanguage.v1.Statement.StandardOutputH\x00\x12S\n\x06return\x18\x03 \x01(\x0b\x32\x41.google.cloud.tools.snippetgen.configlanguage.v1.Statement.ReturnH\x00\x12]\n\x0b\x63onditional\x18\x04 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.ConditionalH\x00\x12Y\n\titeration\x18\x05 \x01(\x0b\x32\x44.google.cloud.tools.snippetgen.configlanguage.v1.Statement.IterationH\x00\x1a\xc1\x01\n\x0b\x44\x65\x63laration\x12\x43\n\x04type\x18\x01 \x01(\x0b\x32\x35.google.cloud.tools.snippetgen.configlanguage.v1.Type\x12\x0c\n\x04name\x18\x02 \x01(\t\x12J\n\x05value\x18\x03 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12\x13\n\x0b\x64\x65scription\x18\x04 \x01(\t\x1a\\\n\x0eStandardOutput\x12J\n\x05value\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x1aU\n\x06Return\x12K\n\x06result\x18\x01 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x1a\xf8\x01\n\x0b\x43onditional\x12N\n\tcondition\x18\x01 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12K\n\x07on_true\x18\x02 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x12L\n\x08on_false\x18\x03 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x1a\xdd\x0f\n\tIteration\x12\x83\x01\n\x1anumeric_sequence_iteration\x18\x01 \x01(\x0b\x32].google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.NumericSequenceIterationH\x00\x12t\n\x12repeated_iteration\x18\x02 \x01(\x0b\x32V.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.RepeatedIterationH\x00\x12j\n\rmap_iteration\x18\x03 \x01(\x0b\x32Q.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.MapIterationH\x00\x12n\n\x0f\x62ytes_iteration\x18\x04 \x01(\x0b\x32S.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.BytesIterationH\x00\x12N\n\nstatements\x18\x05 \x03(\x0b\x32:.google.cloud.tools.snippetgen.configlanguage.v1.Statement\x1a\xdc\x05\n\x18NumericSequenceIteration\x12X\n\x08start_at\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration\x12P\n\tincrement\x18\x03 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x00\x12Q\n\nmultiplier\x18\x04 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x00\x12Y\n\x12less_than_or_equal\x18\x07 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x01\x12P\n\tless_than\x18\x08 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x01\x12\\\n\x15greater_than_or_equal\x18\t \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x01\x12S\n\x0cgreater_than\x18\n \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x01\x12R\n\x0btotal_steps\x18\x0b \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x01\x42\x06\n\x04stepB\x05\n\x03\x65nd\x1a\x8c\x01\n\x11RepeatedIteration\x12\x61\n\x11repeated_elements\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration\x12\x14\n\x0c\x63urrent_name\x18\x02 \x01(\t\x1a\x99\x01\n\x0cMapIteration\x12S\n\x03map\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration\x12\x18\n\x10\x63urrent_key_name\x18\x02 \x01(\t\x12\x1a\n\x12\x63urrent_value_name\x18\x03 \x01(\t\x1a\x8b\x03\n\x0e\x42ytesIteration\x12]\n\rbyte_sequence\x18\x01 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration\x12Q\n\nchunk_size\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x00\x12S\n\x0ctotal_chunks\x18\x03 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x00\x12S\n\nchunk_type\x18\x04 \x01(\x0b\x32?.google.cloud.tools.snippetgen.configlanguage.v1.Type.BytesType\x12\x14\n\x0c\x63urrent_name\x18\x05 \x01(\tB\x07\n\x05\x63hunkB\x10\n\x0eiteration_typeB\x10\n\x0estatement_type\"\xb6\r\n\x04Type\x12W\n\x0bscalar_type\x18\x01 \x01(\x0e\x32@.google.cloud.tools.snippetgen.configlanguage.v1.Type.ScalarTypeH\x00\x12S\n\tenum_type\x18\x02 \x01(\x0b\x32>.google.cloud.tools.snippetgen.configlanguage.v1.Type.EnumTypeH\x00\x12U\n\nbytes_type\x18\x03 \x01(\x0b\x32?.google.cloud.tools.snippetgen.configlanguage.v1.Type.BytesTypeH\x00\x12Y\n\x0cmessage_type\x18\x04 \x01(\x0b\x32\x41.google.cloud.tools.snippetgen.configlanguage.v1.Type.MessageTypeH\x00\x12[\n\rrepeated_type\x18\x05 \x01(\x0b\x32\x42.google.cloud.tools.snippetgen.configlanguage.v1.Type.RepeatedTypeH\x00\x12Q\n\x08map_type\x18\x06 \x01(\x0b\x32=.google.cloud.tools.snippetgen.configlanguage.v1.Type.MapTypeH\x00\x1a\"\n\x08\x45numType\x12\x16\n\x0e\x65num_full_name\x18\x01 \x01(\t\x1a\xce\x01\n\tBytesType\x12o\n\x13language_equivalent\x18\x01 \x01(\x0e\x32R.google.cloud.tools.snippetgen.configlanguage.v1.Type.BytesType.LanguageEquivalent\"P\n\x12LanguageEquivalent\x12\x12\n\x0ePROTOBUF_BYTES\x10\x00\x12\n\n\x06\x42\x41SE64\x10\x01\x12\x0e\n\nBYTE_ARRAY\x10\x02\x12\n\n\x06STREAM\x10\x03\x1a(\n\x0bMessageType\x12\x19\n\x11message_full_name\x18\x01 \x01(\t\x1a\x91\x02\n\x0cRepeatedType\x12K\n\x0c\x65lement_type\x18\x01 \x01(\x0b\x32\x35.google.cloud.tools.snippetgen.configlanguage.v1.Type\x12r\n\x13language_equivalent\x18\x02 \x01(\x0e\x32U.google.cloud.tools.snippetgen.configlanguage.v1.Type.RepeatedType.LanguageEquivalent\"@\n\x12LanguageEquivalent\x12\x15\n\x11PROTOBUF_REPEATED\x10\x00\x12\t\n\x05\x41RRAY\x10\x01\x12\x08\n\x04LIST\x10\x02\x1a\xc4\x02\n\x07MapType\x12G\n\x08key_type\x18\x01 \x01(\x0b\x32\x35.google.cloud.tools.snippetgen.configlanguage.v1.Type\x12I\n\nvalue_type\x18\x02 \x01(\x0b\x32\x35.google.cloud.tools.snippetgen.configlanguage.v1.Type\x12m\n\x13language_equivalent\x18\x03 \x01(\x0e\x32P.google.cloud.tools.snippetgen.configlanguage.v1.Type.MapType.LanguageEquivalent\"6\n\x12LanguageEquivalent\x12\x10\n\x0cPROTOBUF_MAP\x10\x00\x12\x0e\n\nDICTIONARY\x10\x01\"\x96\x02\n\nScalarType\x12\x19\n\x15SCALAR_TYPE_UNDEFINED\x10\x00\x12\x0f\n\x0bTYPE_DOUBLE\x10\x01\x12\x0e\n\nTYPE_FLOAT\x10\x02\x12\x0e\n\nTYPE_INT64\x10\x03\x12\x0f\n\x0bTYPE_UINT64\x10\x04\x12\x0e\n\nTYPE_INT32\x10\x05\x12\x10\n\x0cTYPE_FIXED64\x10\x06\x12\x10\n\x0cTYPE_FIXED32\x10\x07\x12\r\n\tTYPE_BOOL\x10\x08\x12\x0f\n\x0bTYPE_STRING\x10\t\x12\x0f\n\x0bTYPE_UINT32\x10\r\x12\x11\n\rTYPE_SFIXED32\x10\x0f\x12\x11\n\rTYPE_SFIXED64\x10\x10\x12\x0f\n\x0bTYPE_SINT32\x10\x11\x12\x0f\n\x0bTYPE_SINT64\x10\x12\x42\x0b\n\ttype_kind\"\xa8\x10\n\nExpression\x12[\n\nnull_value\x18\x01 \x01(\x0e\x32\x45.google.cloud.tools.snippetgen.configlanguage.v1.Expression.NullValueH\x00\x12\x61\n\rdefault_value\x18\x02 \x01(\x0e\x32H.google.cloud.tools.snippetgen.configlanguage.v1.Expression.DefaultValueH\x00\x12[\n\nname_value\x18\x03 \x01(\x0b\x32\x45.google.cloud.tools.snippetgen.configlanguage.v1.Expression.NameValueH\x00\x12\x16\n\x0cnumber_value\x18\x04 \x01(\x01H\x00\x12\x17\n\rboolean_value\x18\x05 \x01(\x08H\x00\x12\x16\n\x0cstring_value\x18\x06 \x01(\tH\x00\x12\x14\n\nenum_value\x18\x07 \x01(\tH\x00\x12]\n\x0b\x62ytes_value\x18\x08 \x01(\x0b\x32\x46.google.cloud.tools.snippetgen.configlanguage.v1.Expression.BytesValueH\x00\x12\x61\n\rcomplex_value\x18\t \x01(\x0b\x32H.google.cloud.tools.snippetgen.configlanguage.v1.Expression.ComplexValueH\x00\x12_\n\nlist_value\x18\n \x01(\x0b\x32I.google.cloud.tools.snippetgen.configlanguage.v1.Expression.RepeatedValueH\x00\x12Y\n\tmap_value\x18\x0b \x01(\x0b\x32\x44.google.cloud.tools.snippetgen.configlanguage.v1.Expression.MapValueH\x00\x12l\n\x11\x63onditional_value\x18\x0c \x01(\x0b\x32O.google.cloud.tools.snippetgen.configlanguage.v1.Expression.ConditionalOperatorH\x00\x12\x13\n\x0b\x64\x65scription\x18\r \x01(\t\x1a\'\n\tNameValue\x12\x0c\n\x04name\x18\x01 \x01(\t\x12\x0c\n\x04path\x18\x02 \x03(\t\x1a\xb3\x02\n\nBytesValue\x12T\n\rbase64_string\x18\x01 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionH\x00\x12h\n\x0b\x66ile_stream\x18\x02 \x01(\x0b\x32Q.google.cloud.tools.snippetgen.configlanguage.v1.Expression.BytesValue.FileStreamH\x00\x1a\\\n\nFileStream\x12N\n\tfile_path\x18\x01 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.ExpressionB\x07\n\x05value\x1a\xec\x01\n\x0c\x43omplexValue\x12l\n\nproperties\x18\x01 \x03(\x0b\x32X.google.cloud.tools.snippetgen.configlanguage.v1.Expression.ComplexValue.PropertiesEntry\x1an\n\x0fPropertiesEntry\x12\x0b\n\x03key\x18\x01 \x01(\t\x12J\n\x05value\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression:\x02\x38\x01\x1a\\\n\rRepeatedValue\x12K\n\x06values\x18\x01 \x03(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x1a\xa2\x01\n\x08MapValue\x12I\n\x04keys\x18\x01 \x03(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12K\n\x06values\x18\x02 \x03(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x1a\x82\x02\n\x13\x43onditionalOperator\x12N\n\tcondition\x18\x01 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12L\n\x07on_true\x18\x02 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\x12M\n\x08on_false\x18\x03 \x01(\x0b\x32;.google.cloud.tools.snippetgen.configlanguage.v1.Expression\"\x1b\n\tNullValue\x12\x0e\n\nNULL_VALUE\x10\x00\"!\n\x0c\x44\x65\x66\x61ultValue\x12\x11\n\rDEFAULT_VALUE\x10\x00\x42\x07\n\x05value*\xa3\x01\n\x17GeneratorOutputLanguage\x12)\n%GENERATOR_OUTPUT_LANGUAGE_UNSPECIFIED\x10\x00\x12\x0f\n\x0b\x43_PLUS_PLUS\x10\x01\x12\x0b\n\x07\x43_SHARP\x10\x02\x12\x06\n\x02GO\x10\x03\x12\x08\n\x04JAVA\x10\x04\x12\x0e\n\nJAVASCRIPT\x10\x05\x12\x07\n\x03PHP\x10\x06\x12\n\n\x06PYTHON\x10\x07\x12\x08\n\x04RUBY\x10\x08\x42\xee\x01\n3com.google.cloud.tools.snippetgen.configlanguage.v1B\x1aSnippetConfigLanguageProtoP\x01\xaa\x02/Google.Cloud.Tools.SnippetGen.ConfigLanguage.V1\xca\x02/Google\\Cloud\\Tools\\SnippetGen\\ConfigLanguage\\V1\xea\x02\x34Google::Cloud::Tools::SnippetGen::ConfigLanguage::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Google
  module Cloud
    module Tools
      module SnippetGen
        module ConfigLanguage
          module V1
            SnippetConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.SnippetConfig").msgclass
            SnippetConfigMetadata = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.SnippetConfigMetadata").msgclass
            Rpc = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Rpc").msgclass
            SnippetSignature = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.SnippetSignature").msgclass
            SnippetSignature::SyncPreference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.SnippetSignature.SyncPreference").enummodule
            Snippet = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet").msgclass
            Snippet::ClientInitialization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization").msgclass
            Snippet::ClientInitialization::ServiceEndpoint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization.ServiceEndpoint").msgclass
            Snippet::ClientInitialization::ServiceEndpoint::ServiceEndpointSchema = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientInitialization.ServiceEndpoint.ServiceEndpointSchema").enummodule
            Snippet::Standard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.Standard").msgclass
            Snippet::Paginated = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.Paginated").msgclass
            Snippet::Lro = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.Lro").msgclass
            Snippet::ClientStreaming = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientStreaming").msgclass
            Snippet::ServerStreaming = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ServerStreaming").msgclass
            Snippet::BidiStreaming = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.BidiStreaming").msgclass
            Snippet::ClientCall = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.ClientCall").msgclass
            Snippet::SimpleRequestInitialization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleRequestInitialization").msgclass
            Snippet::StreamingRequestInitialization = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingRequestInitialization").msgclass
            Snippet::SimpleResponseHandling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.SimpleResponseHandling").msgclass
            Snippet::PaginatedResponseHandling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling").msgclass
            Snippet::PaginatedResponseHandling::ByItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByItem").msgclass
            Snippet::PaginatedResponseHandling::ByPage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.ByPage").msgclass
            Snippet::PaginatedResponseHandling::NextPageToken = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.PaginatedResponseHandling.NextPageToken").msgclass
            Snippet::LroResponseHandling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.LroResponseHandling").msgclass
            Snippet::LroResponseHandling::PollingType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.LroResponseHandling.PollingType").enummodule
            Snippet::StreamingResponseHandling = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Snippet.StreamingResponseHandling").msgclass
            Statement = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement").msgclass
            Statement::Declaration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Declaration").msgclass
            Statement::StandardOutput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.StandardOutput").msgclass
            Statement::Return = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Return").msgclass
            Statement::Conditional = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Conditional").msgclass
            Statement::Iteration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration").msgclass
            Statement::Iteration::NumericSequenceIteration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.NumericSequenceIteration").msgclass
            Statement::Iteration::RepeatedIteration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.RepeatedIteration").msgclass
            Statement::Iteration::MapIteration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.MapIteration").msgclass
            Statement::Iteration::BytesIteration = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Statement.Iteration.BytesIteration").msgclass
            Type = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type").msgclass
            Type::EnumType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.EnumType").msgclass
            Type::BytesType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.BytesType").msgclass
            Type::BytesType::LanguageEquivalent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.BytesType.LanguageEquivalent").enummodule
            Type::MessageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.MessageType").msgclass
            Type::RepeatedType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.RepeatedType").msgclass
            Type::RepeatedType::LanguageEquivalent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.RepeatedType.LanguageEquivalent").enummodule
            Type::MapType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.MapType").msgclass
            Type::MapType::LanguageEquivalent = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.MapType.LanguageEquivalent").enummodule
            Type::ScalarType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Type.ScalarType").enummodule
            Expression = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression").msgclass
            Expression::NameValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.NameValue").msgclass
            Expression::BytesValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.BytesValue").msgclass
            Expression::BytesValue::FileStream = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.BytesValue.FileStream").msgclass
            Expression::ComplexValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.ComplexValue").msgclass
            Expression::RepeatedValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.RepeatedValue").msgclass
            Expression::MapValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.MapValue").msgclass
            Expression::ConditionalOperator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.ConditionalOperator").msgclass
            Expression::NullValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.NullValue").enummodule
            Expression::DefaultValue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.Expression.DefaultValue").enummodule
            GeneratorOutputLanguage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.tools.snippetgen.configlanguage.v1.GeneratorOutputLanguage").enummodule
          end
        end
      end
    end
  end
end
