LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE		:= leveldb
LOCAL_C_INCLUDES	:= $(LOCAL_PATH)/include .
LOCAL_CFLAGS 		:= 	-DLEVELDB_ATOMIC_PRESENT \
						-DLEVELDB_PLATFORM_POSIX \
						-DOS_ANDROID
LOCAL_SRC_FILES		:=  \
	db/builder.cc \
	db/c.cc \
	db/db_impl.cc \
	db/db_iter.cc \
	db/dbformat.cc \
	db/dumpfile.cc \
	db/filename.cc \
	db/log_reader.cc \
	db/log_writer.cc \
	db/memtable.cc \
	db/repair.cc \
	db/table_cache.cc \
	db/version_edit.cc \
	db/version_set.cc \
	db/write_batch.cc \
	port/port_posix.cc \
	table/block_builder.cc \
	table/block.cc \
	table/filter_block.cc \
	table/format.cc \
	table/iterator.cc \
	table/merger.cc \
	table/table_builder.cc \
	table/table.cc \
	table/two_level_iterator.cc \
	util/arena.cc \
	util/bloom.cc \
	util/cache.cc \
	util/coding.cc \
	util/comparator.cc \
	util/crc32c.cc \
	util/env.cc \
	util/env_posix.cc \
	util/filter_policy.cc \
	util/hash.cc \
	util/histogram.cc \
	util/logging.cc \
	util/options.cc \
	util/status.cc

include $(BUILD_STATIC_LIBRARY)

