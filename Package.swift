// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "Protobuf",
  products: [
    .library(
      name: "ProtobufCxx",
      targets: [
        "ProtobufCxx",
      ]
    )
  ],

  dependencies: [
      .package(url: "https://github.com/firebase/abseil-cpp-SwiftPM.git", .exact("0.20230802.0")),
  ],

  targets: [
    .target(
      name: "ProtobufCxx",
      dependencies: [
        .product(name:"abseil", package: "abseil-cpp-SwiftPM"),
      ],
      path: "src",
      exclude: [
        "src/google/protobuf/compiler",
        "src/google/protobuf/json",
        
        "src/google/protobuf/any_test.cc",
        "src/google/protobuf/any_test.proto",
        "src/google/protobuf/arena_align_test.cc",
        "src/google/protobuf/arenaz_sampler_test.cc",
        "src/google/protobuf/debug_counter_test.cc",
        "src/google/protobuf/descriptor_visitor_test.cc",
        "src/google/protobuf/drop_unknown_fields_test.cc",
        "src/google/protobuf/feature_resolver_test.cc",
        "src/google/protobuf/generated_enum_util_test.cc",
        "src/google/protobuf/generated_message_tctable_lite_test.cc",
        "src/google/protobuf/has_bits_test.cc",
        "src/google/protobuf/map_field_test.cc",
        "src/google/protobuf/map_test.cc",
        "src/google/protobuf/map_test.inc",
        "src/google/protobuf/no_field_presence_test.cc",
        "src/google/protobuf/port_test.cc",
        "src/google/protobuf/preserve_unknown_enum_test.cc",
        "src/google/protobuf/raw_ptr_test.cc",
        "src/google/protobuf/redaction_metric_test.cc",
        "src/google/protobuf/reflection_mode_test.cc",
        "src/google/protobuf/reflection_visit_fields_test.cc",
        "src/google/protobuf/retention_test.cc",
        "src/google/protobuf/string_block_test.cc",
        "src/google/protobuf/string_view_test.cc",
        "src/google/protobuf/unredacted_debug_format_for_test_test.cc",
        "src/google/protobuf/unredacted_debug_format_for_test.cc",
        "src/google/protobuf/unredacted_debug_format_for_test.h",
        "src/google/protobuf/varint_shuffle_test.cc",

        "src/google/protobuf/io/printer_death_test.cc",
        "src/google/protobuf/io/test_zero_copy_stream_test.cc",
        "src/google/protobuf/io/zero_copy_sink_test.cc",

        "src/google/protobuf/util/delimited_message_util_test.cc",
        "src/google/protobuf/util/field_comparator_test.cc",
        "src/google/protobuf/util/field_mask_util_test.cc",
        "src/google/protobuf/util/time_util_test.cc",
        "src/google/protobuf/util/type_resolver_util_test.cc",

        // unittest
        "src/google/protobuf/arena_unittest.cc",
        "src/google/protobuf/arenastring_unittest.cc",
        "src/google/protobuf/descriptor_database_unittest.cc",
        "src/google/protobuf/descriptor_unittest.cc",
        "src/google/protobuf/dynamic_message_unittest.cc",
        "src/google/protobuf/edition_message_unittest.cc",
        "src/google/protobuf/edition_unittest.proto",
        "src/google/protobuf/extension_set_unittest.cc",
        "src/google/protobuf/generated_message_reflection_unittest.cc",
        "src/google/protobuf/inlined_string_field_unittest.cc",
        "src/google/protobuf/internal_message_util_unittest.cc",
        "src/google/protobuf/lite_arena_unittest.cc",
        "src/google/protobuf/lite_unittest.cc",
        "src/google/protobuf/map_lite_unittest.proto",
        "src/google/protobuf/map_proto2_unittest.proto",
        "src/google/protobuf/map_proto3_unittest.proto",
        "src/google/protobuf/map_unittest.proto",
        "src/google/protobuf/message_unittest_legacy_apis.inc",
        "src/google/protobuf/message_unittest.cc",
        "src/google/protobuf/message_unittest.inc",
        "src/google/protobuf/proto3_arena_lite_unittest.cc",
        "src/google/protobuf/proto3_arena_unittest.cc",
        "src/google/protobuf/proto3_lite_unittest.cc",
        "src/google/protobuf/proto3_lite_unittest.inc",
        "src/google/protobuf/reflection_ops_unittest.cc",
        "src/google/protobuf/repeated_field_reflection_unittest.cc",
        "src/google/protobuf/repeated_field_reflection_unittest.inc",
        "src/google/protobuf/repeated_field_unittest.cc",
        "src/google/protobuf/text_format_unittest.cc",
        "src/google/protobuf/unknown_field_set_unittest.cc",
        "src/google/protobuf/well_known_types_unittest.cc",
        "src/google/protobuf/wire_format_unittest.cc",
        "src/google/protobuf/wire_format_unittest.inc",

        "src/google/io/coded_stream_unittest.cc",
        "src/google/io/io_win32_unittest.cc",
        "src/google/io/printer_unittest.cc",
        "src/google/io/tokenizer_unittest.cc",
        "src/google/io/zero_copy_stream_unittest.cc",

        "src/google/stubs/common_unittest.cc",

        "src/google/protobuf/util/message_differencer_unittest_proto3.proto",
        "src/google/protobuf/util/message_differencer_unittest.cc",
        "src/google/protobuf/util/message_differencer_unittest.proto",

        // test_util
        "src/google/protobuf/arena_test_util.cc",
        "src/google/protobuf/arena_test_util.h",
        "src/google/protobuf/map_lite_test_util.cc",
        "src/google/protobuf/map_lite_test_util.h",
        "src/google/protobuf/map_test_util_impl.h",
        "src/google/protobuf/map_test_util.h",
        "src/google/protobuf/map_test_util.inc",
        "src/google/protobuf/test_util_lite.cc",
        "src/google/protobuf/test_util_lite.h",
        "src/google/protobuf/test_util.cc",
        "src/google/protobuf/test_util.h",
        "src/google/protobuf/test_util.inc",
        "src/google/protobuf/test_util2.h",

        "src/google/protobuf/map_lite_test_util.cc",
        "src/google/protobuf/map_lite_test_util.h",

        "src/google/protobuf/map_test_util_impl.h",
        "src/google/protobuf/map_test_util.h",
        "src/google/protobuf/map_test_util.inc",

        "src/google/protobuf/reflection_tester.cc",
        "src/google/protobuf/reflection_tester.h",
      ],
      sources: [
        /*"src/google/protobuf/any_lite.cc",
        "src/google/protobuf/any.cc",
        "src/google/protobuf/any.h",
        "src/google/protobuf/any.pb.cc",
        "src/google/protobuf/any.pb.h",
        "src/google/protobuf/api.pb.cc",
        "src/google/protobuf/api.pb.h",
        "src/google/protobuf/arena_align.cc",
        "src/google/protobuf/arena_align.h",
        "src/google/protobuf/arena_allocation_policy.h",
        "src/google/protobuf/arena_cleanup.h",
        "src/google/protobuf/arena_test_util.cc",
        "src/google/protobuf/arena_test_util.h",
        "src/google/protobuf/arena.cc",
        "src/google/protobuf/arena.h",
        "src/google/protobuf/arenastring.cc",
        "src/google/protobuf/arenastring.h",
        "src/google/protobuf/arenaz_sampler.cc",
        "src/google/protobuf/arenaz_sampler.h",
        "src/google/protobuf/cpp_edition_defaults.h",
        "src/google/protobuf/cpp_features.pb.cc",
        "src/google/protobuf/cpp_features.pb.h",
        "src/google/protobuf/descriptor_database.cc",
        "src/google/protobuf/descriptor_database.h",
        "src/google/protobuf/descriptor_legacy.h",
        "src/google/protobuf/descriptor_lite.h",
        "src/google/protobuf/descriptor_visitor.h",
        "src/google/protobuf/descriptor.cc",
        "src/google/protobuf/descriptor.h",
        "src/google/protobuf/descriptor.pb.cc",
        "src/google/protobuf/descriptor.pb.h",
        "src/google/protobuf/duration.pb.cc",
        "src/google/protobuf/duration.pb.h",
        "src/google/protobuf/dynamic_message.cc",
        "src/google/protobuf/dynamic_message.h",
        "src/google/protobuf/empty.pb.cc",
        "src/google/protobuf/empty.pb.h",
        "src/google/protobuf/endian.h",
        "src/google/protobuf/explicitly_constructed.h",
        "src/google/protobuf/extension_set_heavy.cc",
        "src/google/protobuf/extension_set_inl.h",
        "src/google/protobuf/extension_set.cc",
        "src/google/protobuf/extension_set.h",
        "src/google/protobuf/feature_resolver.cc",
        "src/google/protobuf/feature_resolver.h",
        "src/google/protobuf/field_access_listener.h",
        "src/google/protobuf/field_mask.pb.cc",
        "src/google/protobuf/field_mask.pb.h",
        "src/google/protobuf/fully_verify_message_sets_opt_out.cc",
        "src/google/protobuf/generated_enum_reflection.h",
        "src/google/protobuf/generated_enum_util.cc",
        "src/google/protobuf/generated_enum_util.h",
        "src/google/protobuf/generated_message_bases.cc",
        "src/google/protobuf/generated_message_bases.h",
        "src/google/protobuf/generated_message_reflection.cc",
        "src/google/protobuf/generated_message_reflection.h",
        "src/google/protobuf/generated_message_tctable_decl.h",
        "src/google/protobuf/generated_message_tctable_full.cc",
        "src/google/protobuf/generated_message_tctable_gen.cc",
        "src/google/protobuf/generated_message_tctable_gen.h",
        "src/google/protobuf/generated_message_tctable_impl.h",
        "src/google/protobuf/generated_message_tctable_lite.cc",
        "src/google/protobuf/generated_message_util.cc",
        "src/google/protobuf/generated_message_util.h",
        "src/google/protobuf/has_bits.h",
        "src/google/protobuf/implicit_weak_message.cc",
        "src/google/protobuf/implicit_weak_message.h",
        "src/google/protobuf/inlined_string_field.cc",
        "src/google/protobuf/inlined_string_field.h",
        "src/google/protobuf/internal_visibility_for_testing.h",
        "src/google/protobuf/internal_visibility.h",
        "src/google/protobuf/map_entry.h",
        "src/google/protobuf/map_field_inl.h",
        "src/google/protobuf/map_field_lite.h",
        "src/google/protobuf/map_field.cc",
        "src/google/protobuf/map_field.h",
        "src/google/protobuf/map_probe_benchmark.cc",
        "src/google/protobuf/map_type_handler.h",
        "src/google/protobuf/map.cc",
        "src/google/protobuf/map.h",
        "src/google/protobuf/message_lite.cc",
        "src/google/protobuf/message_lite.h",
        "src/google/protobuf/message_unittest_legacy_apis.inc",
        "src/google/protobuf/message_unittest.inc",
        "src/google/protobuf/message.cc",
        "src/google/protobuf/message.h",
        "src/google/protobuf/metadata_lite.h",
        "src/google/protobuf/metadata.h",
        "src/google/protobuf/package_info.h",
        "src/google/protobuf/parse_context.cc",
        "src/google/protobuf/parse_context.h",
        "src/google/protobuf/port_def.inc",
        "src/google/protobuf/port_undef.inc",
        "src/google/protobuf/port.cc",
        "src/google/protobuf/port.h",
        "src/google/protobuf/proto3_lite_unittest.inc",
        "src/google/protobuf/raw_ptr.cc",
        "src/google/protobuf/raw_ptr.h",
        "src/google/protobuf/reflection_internal.h",
        "src/google/protobuf/reflection_mode.cc",
        "src/google/protobuf/reflection_mode.h",
        "src/google/protobuf/reflection_ops.cc",
        "src/google/protobuf/reflection_ops.h",
        "src/google/protobuf/reflection_visit_field_info.h",
        "src/google/protobuf/reflection_visit_fields.h",
        "src/google/protobuf/reflection.h",
        "src/google/protobuf/repeated_field_reflection_unittest.inc",
        "src/google/protobuf/repeated_field.cc",
        "src/google/protobuf/repeated_field.h",
        "src/google/protobuf/repeated_ptr_field.cc",
        "src/google/protobuf/repeated_ptr_field.h",
        "src/google/protobuf/runtime_version.h",
        "src/google/protobuf/serial_arena.h",
        "src/google/protobuf/service.cc",
        "src/google/protobuf/service.h",
        "src/google/protobuf/source_context.pb.cc",
        "src/google/protobuf/source_context.pb.h",
        "src/google/protobuf/string_block.h",
        "src/google/protobuf/string_member_robber.h",
        "src/google/protobuf/struct.pb.cc",
        "src/google/protobuf/struct.pb.h",
        "src/google/protobuf/test_textproto.h",
        "src/google/protobuf/test_util.inc",
        "src/google/protobuf/text_format.cc",
        "src/google/protobuf/text_format.h",
        "src/google/protobuf/thread_safe_arena.h",
        "src/google/protobuf/timestamp.pb.cc",
        "src/google/protobuf/timestamp.pb.h",
        "src/google/protobuf/type.pb.cc",
        "src/google/protobuf/type.pb.h",
        "src/google/protobuf/unknown_field_set.cc",
        "src/google/protobuf/unknown_field_set.h",
        "src/google/protobuf/varint_shuffle.h",
        "src/google/protobuf/wire_format_lite.cc",
        "src/google/protobuf/wire_format_lite.h",
        "src/google/protobuf/wire_format_unittest.inc",
        "src/google/protobuf/wire_format.cc",
        "src/google/protobuf/wire_format.h",
        "src/google/protobuf/wrappers.pb.cc",
        "src/google/protobuf/wrappers.pb.h",

        "src/google/protobuf/util/delimited_message_util.cc",
        "src/google/protobuf/util/delimited_message_util.h",
        "src/google/protobuf/util/field_comparator.cc",
        "src/google/protobuf/util/field_comparator.h",
        "src/google/protobuf/util/field_mask_util.cc",
        "src/google/protobuf/util/field_mask_util.h",
        "src/google/protobuf/util/json_util.h",
        "src/google/protobuf/util/message_differencer.cc",
        "src/google/protobuf/util/message_differencer.h",
        "src/google/protobuf/util/package_info.h",
        "src/google/protobuf/util/time_util.cc",
        "src/google/protobuf/util/time_util.h",
        "src/google/protobuf/util/type_resolver_util.cc",
        "src/google/protobuf/util/type_resolver_util.h",
        "src/google/protobuf/util/type_resolver.h",

        "src/google/protobuf/io/coded_stream.cc",
        "src/google/protobuf/io/coded_stream.h",
        "src/google/protobuf/io/gzip_stream.cc",
        "src/google/protobuf/io/gzip_stream.h",
        "src/google/protobuf/io/io_win32.cc",
        "src/google/protobuf/io/io_win32.h",
        "src/google/protobuf/io/package_info.h",
        "src/google/protobuf/io/printer.cc",
        "src/google/protobuf/io/printer.h",
        "src/google/protobuf/io/strtod.cc",
        "src/google/protobuf/io/strtod.h",
        "src/google/protobuf/io/test_zero_copy_stream.h",
        "src/google/protobuf/io/tokenizer.cc",
        "src/google/protobuf/io/tokenizer.h",
        "src/google/protobuf/io/zero_copy_sink.cc",
        "src/google/protobuf/io/zero_copy_sink.h",
        "src/google/protobuf/io/zero_copy_stream_impl_lite.cc",
        "src/google/protobuf/io/zero_copy_stream_impl_lite.h",
        "src/google/protobuf/io/zero_copy_stream_impl.cc",
        "src/google/protobuf/io/zero_copy_stream_impl.h",
        "src/google/protobuf/io/zero_copy_stream.cc",
        "src/google/protobuf/io/zero_copy_stream.h",

        "src/google/protobuf/stubs/callback.h",
        "src/google/protobuf/stubs/common.cc",
        "src/google/protobuf/stubs/common.h",
        "src/google/protobuf/stubs/platform_macros.h",
        "src/google/protobuf/stubs/port.h",
        "src/google/protobuf/stubs/status_macros.h"*/
      ],
      resources: [
        .copy("../PrivacyInfo.xcprivacy"),
      ],
      publicHeadersPath: ".",
      cSettings: [
        .headerSearchPath("./"),
      ]
    )
  ],
  cxxLanguageStandard: .gnucxx14
)

