require 'shrine'
require 'shrine/storage/file_system'

Shrine.storages = {
  cache: Shrine::Storage::FileSystem.new('public', prefix: 'uploads/cache'),
  store: Shrine::Storage::FileSystem.new('public', prefix: 'uploads'),
}

Shrine.plugin :activerecord
Shrine.plugin :cached_attachment_data

# MIME Type
Shrine.plugin :instrumentation
Shrine.plugin :determine_mime_type

Shrine.plugin :restore_cached_data
Shrine.plugin :validation
Shrine.plugin :validation_helpers
