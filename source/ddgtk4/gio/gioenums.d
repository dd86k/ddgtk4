module ddgtk4.gio.gioenums;

import ddgtk4.glib.glibconfig;

alias GAppInfoCreateFlags = int;
enum : GAppInfoCreateFlags
{
    G_APP_INFO_CREATE_NONE                           = 0,         /*< nick=none >*/
    G_APP_INFO_CREATE_NEEDS_TERMINAL                 = (1 << 0),  /*< nick=needs-terminal >*/
    G_APP_INFO_CREATE_SUPPORTS_URIS                  = (1 << 1),  /*< nick=supports-uris >*/
    G_APP_INFO_CREATE_SUPPORTS_STARTUP_NOTIFICATION  = (1 << 2)   /*< nick=supports-startup-notification >*/
}

alias GConverterFlags = int;
enum : GConverterFlags
{
    G_CONVERTER_NO_FLAGS     = 0,         /*< nick=none >*/
    G_CONVERTER_INPUT_AT_END = (1 << 0),  /*< nick=input-at-end >*/
    G_CONVERTER_FLUSH        = (1 << 1)   /*< nick=flush >*/
}

alias GConverterResult = int;
enum : GConverterResult
{
    G_CONVERTER_ERROR     = 0,  /*< nick=error >*/
    G_CONVERTER_CONVERTED = 1,  /*< nick=converted >*/
    G_CONVERTER_FINISHED  = 2,  /*< nick=finished >*/
    G_CONVERTER_FLUSHED   = 3   /*< nick=flushed >*/
}

alias GDataStreamByteOrder = int;
enum : GDataStreamByteOrder
{
    G_DATA_STREAM_BYTE_ORDER_BIG_ENDIAN,
    G_DATA_STREAM_BYTE_ORDER_LITTLE_ENDIAN,
    G_DATA_STREAM_BYTE_ORDER_HOST_ENDIAN
}

alias GDataStreamNewlineType = int;
enum : GDataStreamNewlineType
{
    G_DATA_STREAM_NEWLINE_TYPE_LF,
    G_DATA_STREAM_NEWLINE_TYPE_CR,
    G_DATA_STREAM_NEWLINE_TYPE_CR_LF,
    G_DATA_STREAM_NEWLINE_TYPE_ANY
}

alias GFileAttributeType = int;
enum : GFileAttributeType
{
    G_FILE_ATTRIBUTE_TYPE_INVALID = 0,
    G_FILE_ATTRIBUTE_TYPE_STRING,
    G_FILE_ATTRIBUTE_TYPE_BYTE_STRING, /* zero terminated string of non-zero bytes */
    G_FILE_ATTRIBUTE_TYPE_BOOLEAN,
    G_FILE_ATTRIBUTE_TYPE_UINT32,
    G_FILE_ATTRIBUTE_TYPE_INT32,
    G_FILE_ATTRIBUTE_TYPE_UINT64,
    G_FILE_ATTRIBUTE_TYPE_INT64,
    G_FILE_ATTRIBUTE_TYPE_OBJECT,
    G_FILE_ATTRIBUTE_TYPE_STRINGV
}

alias GFileAttributeInfoFlags = int;
enum : GFileAttributeInfoFlags
{
    G_FILE_ATTRIBUTE_INFO_NONE            = 0,
    G_FILE_ATTRIBUTE_INFO_COPY_WITH_FILE  = (1 << 0),
    G_FILE_ATTRIBUTE_INFO_COPY_WHEN_MOVED = (1 << 1)
}

alias GFileAttributeStatus = int;
enum : GFileAttributeStatus
{
    G_FILE_ATTRIBUTE_STATUS_UNSET = 0,
    G_FILE_ATTRIBUTE_STATUS_SET,
    G_FILE_ATTRIBUTE_STATUS_ERROR_SETTING
}

alias GFileQueryInfoFlags = int;
enum : GFileQueryInfoFlags
{
    G_FILE_QUERY_INFO_NONE              = 0,
    G_FILE_QUERY_INFO_NOFOLLOW_SYMLINKS = (1 << 0)   /*< nick=nofollow-symlinks >*/
}

alias GFileCreateFlags = int;
enum : GFileCreateFlags
{
    G_FILE_CREATE_NONE    = 0,
    G_FILE_CREATE_PRIVATE = (1 << 0),
    G_FILE_CREATE_REPLACE_DESTINATION = (1 << 1)
}

alias GFileMeasureFlags = int;
enum : GFileMeasureFlags
{
    G_FILE_MEASURE_NONE                 = 0,
    G_FILE_MEASURE_REPORT_ANY_ERROR     = (1 << 1),
    G_FILE_MEASURE_APPARENT_SIZE        = (1 << 2),
    G_FILE_MEASURE_NO_XDEV              = (1 << 3)
}

alias GMountMountFlags = int;
enum : GMountMountFlags /*< flags >*/
{
    G_MOUNT_MOUNT_NONE = 0
}

alias GMountUnmountFlags = int;
enum : GMountUnmountFlags
{
    G_MOUNT_UNMOUNT_NONE  = 0,
    G_MOUNT_UNMOUNT_FORCE = (1 << 0)
}

alias GDriveStartFlags = int;
enum : GDriveStartFlags /*< flags >*/
{
    G_DRIVE_START_NONE = 0
}

alias GDriveStartStopType = int;
enum : GDriveStartStopType
{
    G_DRIVE_START_STOP_TYPE_UNKNOWN,
    G_DRIVE_START_STOP_TYPE_SHUTDOWN,
    G_DRIVE_START_STOP_TYPE_NETWORK,
    G_DRIVE_START_STOP_TYPE_MULTIDISK,
    G_DRIVE_START_STOP_TYPE_PASSWORD
}

alias GFileCopyFlags = int;
enum : GFileCopyFlags
{
    G_FILE_COPY_NONE                 = 0,          /*< nick=none >*/
    G_FILE_COPY_OVERWRITE            = (1 << 0),
    G_FILE_COPY_BACKUP               = (1 << 1),
    G_FILE_COPY_NOFOLLOW_SYMLINKS    = (1 << 2),
    G_FILE_COPY_ALL_METADATA         = (1 << 3),
    G_FILE_COPY_NO_FALLBACK_FOR_MOVE = (1 << 4),
    G_FILE_COPY_TARGET_DEFAULT_PERMS = (1 << 5),
    G_FILE_COPY_TARGET_DEFAULT_MODIFIED_TIME = (1 << 6), // GIO_AVAILABLE_ENUMERATOR_IN_2_80
}

alias GFileMonitorFlags = int;
enum : GFileMonitorFlags
{
    G_FILE_MONITOR_NONE             = 0,
    G_FILE_MONITOR_WATCH_MOUNTS     = (1 << 0),
    G_FILE_MONITOR_SEND_MOVED       = (1 << 1),
    G_FILE_MONITOR_WATCH_HARD_LINKS = (1 << 2),
    G_FILE_MONITOR_WATCH_MOVES      = (1 << 3)
}

alias GFileType = int;
enum : GFileType
{
    G_FILE_TYPE_UNKNOWN = 0,
    G_FILE_TYPE_REGULAR,
    G_FILE_TYPE_DIRECTORY,
    G_FILE_TYPE_SYMBOLIC_LINK,
    G_FILE_TYPE_SPECIAL, /* socket, fifo, blockdev, chardev */
    G_FILE_TYPE_SHORTCUT,
    G_FILE_TYPE_MOUNTABLE
}

alias GFilesystemPreviewType = int;
enum : GFilesystemPreviewType
{
    G_FILESYSTEM_PREVIEW_TYPE_IF_ALWAYS = 0,
    G_FILESYSTEM_PREVIEW_TYPE_IF_LOCAL,
    G_FILESYSTEM_PREVIEW_TYPE_NEVER
}

alias GFileMonitorEvent = int;
enum : GFileMonitorEvent
{
    G_FILE_MONITOR_EVENT_CHANGED,
    G_FILE_MONITOR_EVENT_CHANGES_DONE_HINT,
    G_FILE_MONITOR_EVENT_DELETED,
    G_FILE_MONITOR_EVENT_CREATED,
    G_FILE_MONITOR_EVENT_ATTRIBUTE_CHANGED,
    G_FILE_MONITOR_EVENT_PRE_UNMOUNT,
    G_FILE_MONITOR_EVENT_UNMOUNTED,
    G_FILE_MONITOR_EVENT_MOVED,
    G_FILE_MONITOR_EVENT_RENAMED,
    G_FILE_MONITOR_EVENT_MOVED_IN,
    G_FILE_MONITOR_EVENT_MOVED_OUT
}

alias GIOErrorEnum = int;
enum : GIOErrorEnum
{
    G_IO_ERROR_FAILED,
    G_IO_ERROR_NOT_FOUND,
    G_IO_ERROR_EXISTS,
    G_IO_ERROR_IS_DIRECTORY,
    G_IO_ERROR_NOT_DIRECTORY,
    G_IO_ERROR_NOT_EMPTY,
    G_IO_ERROR_NOT_REGULAR_FILE,
    G_IO_ERROR_NOT_SYMBOLIC_LINK,
    G_IO_ERROR_NOT_MOUNTABLE_FILE,
    G_IO_ERROR_FILENAME_TOO_LONG,
    G_IO_ERROR_INVALID_FILENAME,
    G_IO_ERROR_TOO_MANY_LINKS,
    G_IO_ERROR_NO_SPACE,
    G_IO_ERROR_INVALID_ARGUMENT,
    G_IO_ERROR_PERMISSION_DENIED,
    G_IO_ERROR_NOT_SUPPORTED,
    G_IO_ERROR_NOT_MOUNTED,
    G_IO_ERROR_ALREADY_MOUNTED,
    G_IO_ERROR_CLOSED,
    G_IO_ERROR_CANCELLED,
    G_IO_ERROR_PENDING,
    G_IO_ERROR_READ_ONLY,
    G_IO_ERROR_CANT_CREATE_BACKUP,
    G_IO_ERROR_WRONG_ETAG,
    G_IO_ERROR_TIMED_OUT,
    G_IO_ERROR_WOULD_RECURSE,
    G_IO_ERROR_BUSY,
    G_IO_ERROR_WOULD_BLOCK,
    G_IO_ERROR_HOST_NOT_FOUND,
    G_IO_ERROR_WOULD_MERGE,
    G_IO_ERROR_FAILED_HANDLED,
    G_IO_ERROR_TOO_MANY_OPEN_FILES,
    G_IO_ERROR_NOT_INITIALIZED,
    G_IO_ERROR_ADDRESS_IN_USE,
    G_IO_ERROR_PARTIAL_INPUT,
    G_IO_ERROR_INVALID_DATA,
    G_IO_ERROR_DBUS_ERROR,
    G_IO_ERROR_HOST_UNREACHABLE,
    G_IO_ERROR_NETWORK_UNREACHABLE,
    G_IO_ERROR_CONNECTION_REFUSED,
    G_IO_ERROR_PROXY_FAILED,
    G_IO_ERROR_PROXY_AUTH_FAILED,
    G_IO_ERROR_PROXY_NEED_AUTH,
    G_IO_ERROR_PROXY_NOT_ALLOWED,
    G_IO_ERROR_BROKEN_PIPE,
    G_IO_ERROR_CONNECTION_CLOSED = G_IO_ERROR_BROKEN_PIPE,
    G_IO_ERROR_NOT_CONNECTED,
    G_IO_ERROR_MESSAGE_TOO_LARGE,
    G_IO_ERROR_NO_SUCH_DEVICE, // GIO_AVAILABLE_ENUMERATOR_IN_2_74,
    G_IO_ERROR_DESTINATION_UNSET, // GIO_AVAILABLE_ENUMERATOR_IN_2_80,
}

alias GAskPasswordFlags = int;
enum : GAskPasswordFlags
{
    G_ASK_PASSWORD_NEED_PASSWORD           = (1 << 0),
    G_ASK_PASSWORD_NEED_USERNAME           = (1 << 1),
    G_ASK_PASSWORD_NEED_DOMAIN             = (1 << 2),
    G_ASK_PASSWORD_SAVING_SUPPORTED        = (1 << 3),
    G_ASK_PASSWORD_ANONYMOUS_SUPPORTED     = (1 << 4),
    G_ASK_PASSWORD_TCRYPT                  = (1 << 5),
}

alias GPasswordSave = int;
enum : GPasswordSave
{
    G_PASSWORD_SAVE_NEVER,
    G_PASSWORD_SAVE_FOR_SESSION,
    G_PASSWORD_SAVE_PERMANENTLY
}

alias GMountOperationResult = int;
enum : GMountOperationResult
{
    G_MOUNT_OPERATION_HANDLED,
    G_MOUNT_OPERATION_ABORTED,
    G_MOUNT_OPERATION_UNHANDLED
}

alias GOutputStreamSpliceFlags = int;
enum : GOutputStreamSpliceFlags
{
    G_OUTPUT_STREAM_SPLICE_NONE         = 0,
    G_OUTPUT_STREAM_SPLICE_CLOSE_SOURCE = (1 << 0),
    G_OUTPUT_STREAM_SPLICE_CLOSE_TARGET = (1 << 1)
}

alias GIOStreamSpliceFlags = int;
enum : GIOStreamSpliceFlags
{
    G_IO_STREAM_SPLICE_NONE          = 0,
    G_IO_STREAM_SPLICE_CLOSE_STREAM1 = (1 << 0),
    G_IO_STREAM_SPLICE_CLOSE_STREAM2 = (1 << 1),
    G_IO_STREAM_SPLICE_WAIT_FOR_BOTH = (1 << 2)
}

alias GEmblemOrigin = int;
enum : GEmblemOrigin
{
    G_EMBLEM_ORIGIN_UNKNOWN,
    G_EMBLEM_ORIGIN_DEVICE,
    G_EMBLEM_ORIGIN_LIVEMETADATA,
    G_EMBLEM_ORIGIN_TAG
}

alias GResolverError = int;
enum : GResolverError
{
    G_RESOLVER_ERROR_NOT_FOUND,
    G_RESOLVER_ERROR_TEMPORARY_FAILURE,
    G_RESOLVER_ERROR_INTERNAL
}

alias GResolverRecordType = int;
enum : GResolverRecordType
{
    G_RESOLVER_RECORD_SRV = 1,
    G_RESOLVER_RECORD_MX,
    G_RESOLVER_RECORD_TXT,
    G_RESOLVER_RECORD_SOA,
    G_RESOLVER_RECORD_NS
}

alias GResourceError = int;
enum : GResourceError
{
    G_RESOURCE_ERROR_NOT_FOUND,
    G_RESOURCE_ERROR_INTERNAL
}

alias GResourceFlags = int;
enum : GResourceFlags
{
    G_RESOURCE_FLAGS_NONE       = 0,
    G_RESOURCE_FLAGS_COMPRESSED = (1<<0)
}

alias GResourceLookupFlags = int;
enum : GResourceLookupFlags /*< flags >*/
{
    G_RESOURCE_LOOKUP_FLAGS_NONE       = 0
}

alias GSocketFamily = int;
enum : GSocketFamily
{
    G_SOCKET_FAMILY_INVALID,
    G_SOCKET_FAMILY_UNIX = GLIB_SYSDEF_AF_UNIX,
    G_SOCKET_FAMILY_IPV4 = GLIB_SYSDEF_AF_INET,
    G_SOCKET_FAMILY_IPV6 = GLIB_SYSDEF_AF_INET6
}

alias GSocketType = int;
enum : GSocketType
{
    G_SOCKET_TYPE_INVALID,
    G_SOCKET_TYPE_STREAM,
    G_SOCKET_TYPE_DATAGRAM,
    G_SOCKET_TYPE_SEQPACKET
}

alias GSocketMsgFlags = int;
enum : GSocketMsgFlags /*< flags >*/
{
    G_SOCKET_MSG_NONE,
    G_SOCKET_MSG_OOB = GLIB_SYSDEF_MSG_OOB,
    G_SOCKET_MSG_PEEK = GLIB_SYSDEF_MSG_PEEK,
    G_SOCKET_MSG_DONTROUTE = GLIB_SYSDEF_MSG_DONTROUTE
}

alias GSocketProtocol = int;
enum : GSocketProtocol
{
    G_SOCKET_PROTOCOL_UNKNOWN = -1,
    G_SOCKET_PROTOCOL_DEFAULT = 0,
    G_SOCKET_PROTOCOL_TCP     = 6,
    G_SOCKET_PROTOCOL_UDP     = 17,
    G_SOCKET_PROTOCOL_SCTP    = 132
}

alias GZlibCompressorFormat = int;
enum : GZlibCompressorFormat
{
    G_ZLIB_COMPRESSOR_FORMAT_ZLIB,
    G_ZLIB_COMPRESSOR_FORMAT_GZIP,
    G_ZLIB_COMPRESSOR_FORMAT_RAW
}

alias GUnixSocketAddressType = int;
enum : GUnixSocketAddressType
{
    G_UNIX_SOCKET_ADDRESS_INVALID,
    G_UNIX_SOCKET_ADDRESS_ANONYMOUS,
    G_UNIX_SOCKET_ADDRESS_PATH,
    G_UNIX_SOCKET_ADDRESS_ABSTRACT,
    G_UNIX_SOCKET_ADDRESS_ABSTRACT_PADDED
}

alias GBusType = int;
enum
{
    G_BUS_TYPE_STARTER = -1,
    G_BUS_TYPE_NONE = 0,
    G_BUS_TYPE_SYSTEM  = 1,
    G_BUS_TYPE_SESSION = 2
}

alias GBusNameOwnerFlags = int;
enum
{
    G_BUS_NAME_OWNER_FLAGS_NONE = 0,                    /*< nick=none >*/
    G_BUS_NAME_OWNER_FLAGS_ALLOW_REPLACEMENT = (1<<0),  /*< nick=allow-replacement >*/
    G_BUS_NAME_OWNER_FLAGS_REPLACE = (1<<1),           /*< nick=replace >*/
    G_BUS_NAME_OWNER_FLAGS_DO_NOT_QUEUE = (1<<2)       /*< nick=do-not-queue >*/
}
/* When adding new flags, their numeric values must currently match those
 * used in the D-Bus Specification. */

alias GBusNameWatcherFlags = int;
enum : GBusNameWatcherFlags
{
    G_BUS_NAME_WATCHER_FLAGS_NONE = 0,
    G_BUS_NAME_WATCHER_FLAGS_AUTO_START = (1<<0)
}

alias GDBusProxyFlags = int;
enum : GDBusProxyFlags
{
    G_DBUS_PROXY_FLAGS_NONE = 0,
    G_DBUS_PROXY_FLAGS_DO_NOT_LOAD_PROPERTIES = (1<<0),
    G_DBUS_PROXY_FLAGS_DO_NOT_CONNECT_SIGNALS = (1<<1),
    G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START = (1<<2),
    G_DBUS_PROXY_FLAGS_GET_INVALIDATED_PROPERTIES = (1<<3),
    G_DBUS_PROXY_FLAGS_DO_NOT_AUTO_START_AT_CONSTRUCTION = (1<<4),
    G_DBUS_PROXY_FLAGS_NO_MATCH_RULE = (1<<5), // GIO_AVAILABLE_ENUMERATOR_IN_2_72
}

alias GDBusError = int;
enum : GDBusError
{
    /* Well-known errors in the org.freedesktop.DBus.Error namespace */
    G_DBUS_ERROR_FAILED,                           /* org.freedesktop.DBus.Error.Failed */
    G_DBUS_ERROR_NO_MEMORY,                        /* org.freedesktop.DBus.Error.NoMemory */
    G_DBUS_ERROR_SERVICE_UNKNOWN,                  /* org.freedesktop.DBus.Error.ServiceUnknown */
    G_DBUS_ERROR_NAME_HAS_NO_OWNER,                /* org.freedesktop.DBus.Error.NameHasNoOwner */
    G_DBUS_ERROR_NO_REPLY,                         /* org.freedesktop.DBus.Error.NoReply */
    G_DBUS_ERROR_IO_ERROR,                         /* org.freedesktop.DBus.Error.IOError */
    G_DBUS_ERROR_BAD_ADDRESS,                      /* org.freedesktop.DBus.Error.BadAddress */
    G_DBUS_ERROR_NOT_SUPPORTED,                    /* org.freedesktop.DBus.Error.NotSupported */
    G_DBUS_ERROR_LIMITS_EXCEEDED,                  /* org.freedesktop.DBus.Error.LimitsExceeded */
    G_DBUS_ERROR_ACCESS_DENIED,                    /* org.freedesktop.DBus.Error.AccessDenied */
    G_DBUS_ERROR_AUTH_FAILED,                      /* org.freedesktop.DBus.Error.AuthFailed */
    G_DBUS_ERROR_NO_SERVER,                        /* org.freedesktop.DBus.Error.NoServer */
    G_DBUS_ERROR_TIMEOUT,                          /* org.freedesktop.DBus.Error.Timeout */
    G_DBUS_ERROR_NO_NETWORK,                       /* org.freedesktop.DBus.Error.NoNetwork */
    G_DBUS_ERROR_ADDRESS_IN_USE,                   /* org.freedesktop.DBus.Error.AddressInUse */
    G_DBUS_ERROR_DISCONNECTED,                     /* org.freedesktop.DBus.Error.Disconnected */
    G_DBUS_ERROR_INVALID_ARGS,                     /* org.freedesktop.DBus.Error.InvalidArgs */
    G_DBUS_ERROR_FILE_NOT_FOUND,                   /* org.freedesktop.DBus.Error.FileNotFound */
    G_DBUS_ERROR_FILE_EXISTS,                      /* org.freedesktop.DBus.Error.FileExists */
    G_DBUS_ERROR_UNKNOWN_METHOD,                   /* org.freedesktop.DBus.Error.UnknownMethod */
    G_DBUS_ERROR_TIMED_OUT,                        /* org.freedesktop.DBus.Error.TimedOut */
    G_DBUS_ERROR_MATCH_RULE_NOT_FOUND,             /* org.freedesktop.DBus.Error.MatchRuleNotFound */
    G_DBUS_ERROR_MATCH_RULE_INVALID,               /* org.freedesktop.DBus.Error.MatchRuleInvalid */
    G_DBUS_ERROR_SPAWN_EXEC_FAILED,                /* org.freedesktop.DBus.Error.Spawn.ExecFailed */
    G_DBUS_ERROR_SPAWN_FORK_FAILED,                /* org.freedesktop.DBus.Error.Spawn.ForkFailed */
    G_DBUS_ERROR_SPAWN_CHILD_EXITED,               /* org.freedesktop.DBus.Error.Spawn.ChildExited */
    G_DBUS_ERROR_SPAWN_CHILD_SIGNALED,             /* org.freedesktop.DBus.Error.Spawn.ChildSignaled */
    G_DBUS_ERROR_SPAWN_FAILED,                     /* org.freedesktop.DBus.Error.Spawn.Failed */
    G_DBUS_ERROR_SPAWN_SETUP_FAILED,               /* org.freedesktop.DBus.Error.Spawn.FailedToSetup */
    G_DBUS_ERROR_SPAWN_CONFIG_INVALID,             /* org.freedesktop.DBus.Error.Spawn.ConfigInvalid */
    G_DBUS_ERROR_SPAWN_SERVICE_INVALID,            /* org.freedesktop.DBus.Error.Spawn.ServiceNotValid */
    G_DBUS_ERROR_SPAWN_SERVICE_NOT_FOUND,          /* org.freedesktop.DBus.Error.Spawn.ServiceNotFound */
    G_DBUS_ERROR_SPAWN_PERMISSIONS_INVALID,        /* org.freedesktop.DBus.Error.Spawn.PermissionsInvalid */
    G_DBUS_ERROR_SPAWN_FILE_INVALID,               /* org.freedesktop.DBus.Error.Spawn.FileInvalid */
    G_DBUS_ERROR_SPAWN_NO_MEMORY,                  /* org.freedesktop.DBus.Error.Spawn.NoMemory */
    G_DBUS_ERROR_UNIX_PROCESS_ID_UNKNOWN,          /* org.freedesktop.DBus.Error.UnixProcessIdUnknown */
    G_DBUS_ERROR_INVALID_SIGNATURE,                /* org.freedesktop.DBus.Error.InvalidSignature */
    G_DBUS_ERROR_INVALID_FILE_CONTENT,             /* org.freedesktop.DBus.Error.InvalidFileContent */
    G_DBUS_ERROR_SELINUX_SECURITY_CONTEXT_UNKNOWN, /* org.freedesktop.DBus.Error.SELinuxSecurityContextUnknown */
    G_DBUS_ERROR_ADT_AUDIT_DATA_UNKNOWN,           /* org.freedesktop.DBus.Error.AdtAuditDataUnknown */
    G_DBUS_ERROR_OBJECT_PATH_IN_USE,               /* org.freedesktop.DBus.Error.ObjectPathInUse */
    G_DBUS_ERROR_UNKNOWN_OBJECT,                   /* org.freedesktop.DBus.Error.UnknownObject */
    G_DBUS_ERROR_UNKNOWN_INTERFACE,                /* org.freedesktop.DBus.Error.UnknownInterface */
    G_DBUS_ERROR_UNKNOWN_PROPERTY,                 /* org.freedesktop.DBus.Error.UnknownProperty */
    G_DBUS_ERROR_PROPERTY_READ_ONLY                /* org.freedesktop.DBus.Error.PropertyReadOnly */
}
/* Remember to update g_dbus_error_quark() in gdbuserror.c if you extend this enumeration */

alias GDBusConnectionFlags = int;
enum : GDBusConnectionFlags
{
    G_DBUS_CONNECTION_FLAGS_NONE = 0,
    G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_CLIENT = (1<<0),
    G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_SERVER = (1<<1),
    G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = (1<<2),
    G_DBUS_CONNECTION_FLAGS_MESSAGE_BUS_CONNECTION = (1<<3),
    G_DBUS_CONNECTION_FLAGS_DELAY_MESSAGE_PROCESSING = (1<<4),
    G_DBUS_CONNECTION_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = (1<<5), // GIO_AVAILABLE_ENUMERATOR_IN_2_68
    G_DBUS_CONNECTION_FLAGS_CROSS_NAMESPACE = (1<<6) // GIO_AVAILABLE_ENUMERATOR_IN_2_74
}

alias GDBusCapabilityFlags = int;
enum : GDBusCapabilityFlags
{
    G_DBUS_CAPABILITY_FLAGS_NONE = 0,
    G_DBUS_CAPABILITY_FLAGS_UNIX_FD_PASSING = (1<<0)
}

alias GDBusCallFlags = int;
enum : GDBusCallFlags
{
    G_DBUS_CALL_FLAGS_NONE = 0,
    G_DBUS_CALL_FLAGS_NO_AUTO_START = (1<<0),
    G_DBUS_CALL_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = (1<<1)
}
/* (1<<31) is reserved for internal use by GDBusConnection, do not use it. */

alias GDBusMessageType = int;
enum : GDBusMessageType
{
    G_DBUS_MESSAGE_TYPE_INVALID,
    G_DBUS_MESSAGE_TYPE_METHOD_CALL,
    G_DBUS_MESSAGE_TYPE_METHOD_RETURN,
    G_DBUS_MESSAGE_TYPE_ERROR,
    G_DBUS_MESSAGE_TYPE_SIGNAL
}

alias GDBusMessageFlags = int;
enum : GDBusMessageFlags
{
    G_DBUS_MESSAGE_FLAGS_NONE = 0,
    G_DBUS_MESSAGE_FLAGS_NO_REPLY_EXPECTED = (1<<0),
    G_DBUS_MESSAGE_FLAGS_NO_AUTO_START = (1<<1),
    G_DBUS_MESSAGE_FLAGS_ALLOW_INTERACTIVE_AUTHORIZATION = (1<<2)
}

alias GDBusMessageHeaderField = int;
enum : GDBusMessageHeaderField
{
    G_DBUS_MESSAGE_HEADER_FIELD_INVALID,
    G_DBUS_MESSAGE_HEADER_FIELD_PATH,
    G_DBUS_MESSAGE_HEADER_FIELD_INTERFACE,
    G_DBUS_MESSAGE_HEADER_FIELD_MEMBER,
    G_DBUS_MESSAGE_HEADER_FIELD_ERROR_NAME,
    G_DBUS_MESSAGE_HEADER_FIELD_REPLY_SERIAL,
    G_DBUS_MESSAGE_HEADER_FIELD_DESTINATION,
    G_DBUS_MESSAGE_HEADER_FIELD_SENDER,
    G_DBUS_MESSAGE_HEADER_FIELD_SIGNATURE,
    G_DBUS_MESSAGE_HEADER_FIELD_NUM_UNIX_FDS
}

alias GDBusPropertyInfoFlags = int;
enum : GDBusPropertyInfoFlags
{
    G_DBUS_PROPERTY_INFO_FLAGS_NONE = 0,
    G_DBUS_PROPERTY_INFO_FLAGS_READABLE = (1<<0),
    G_DBUS_PROPERTY_INFO_FLAGS_WRITABLE = (1<<1)
}

alias GDBusSubtreeFlags = int;
enum : GDBusSubtreeFlags
{
    G_DBUS_SUBTREE_FLAGS_NONE = 0,
    G_DBUS_SUBTREE_FLAGS_DISPATCH_TO_UNENUMERATED_NODES = (1<<0)
}

alias GDBusServerFlags = int;
enum : GDBusServerFlags
{
    G_DBUS_SERVER_FLAGS_NONE = 0,
    G_DBUS_SERVER_FLAGS_RUN_IN_THREAD = (1<<0),
    G_DBUS_SERVER_FLAGS_AUTHENTICATION_ALLOW_ANONYMOUS = (1<<1),
    G_DBUS_SERVER_FLAGS_AUTHENTICATION_REQUIRE_SAME_USER = (1<<2) // GIO_AVAILABLE_ENUMERATOR_IN_2_68
}

alias GDBusSignalFlags = int;
enum : GDBusSignalFlags /*< flags >*/
{
    G_DBUS_SIGNAL_FLAGS_NONE = 0,
    G_DBUS_SIGNAL_FLAGS_NO_MATCH_RULE = (1<<0),
    G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_NAMESPACE = (1<<1),
    G_DBUS_SIGNAL_FLAGS_MATCH_ARG0_PATH = (1<<2)
}

alias GDBusSendMessageFlags = int;
enum : GDBusSendMessageFlags
{
    G_DBUS_SEND_MESSAGE_FLAGS_NONE = 0,
    G_DBUS_SEND_MESSAGE_FLAGS_PRESERVE_SERIAL = (1<<0)
}
/* (1<<31) is reserved for internal use by GDBusConnection, do not use it. */

alias GCredentialsType = int;
enum : GCredentialsType
{
    G_CREDENTIALS_TYPE_INVALID,
    G_CREDENTIALS_TYPE_LINUX_UCRED,
    G_CREDENTIALS_TYPE_FREEBSD_CMSGCRED,
    G_CREDENTIALS_TYPE_OPENBSD_SOCKPEERCRED,
    G_CREDENTIALS_TYPE_SOLARIS_UCRED,
    G_CREDENTIALS_TYPE_NETBSD_UNPCBID,
    G_CREDENTIALS_TYPE_APPLE_XUCRED,
    G_CREDENTIALS_TYPE_WIN32_PID,
}

alias GDBusMessageByteOrder = int;
enum : GDBusMessageByteOrder
{
    G_DBUS_MESSAGE_BYTE_ORDER_BIG_ENDIAN    = 'B',
    G_DBUS_MESSAGE_BYTE_ORDER_LITTLE_ENDIAN = 'l'
}

alias GApplicationFlags = int;
enum : GApplicationFlags /*< prefix=G_APPLICATION >*/
{
    G_APPLICATION_DEFAULT_FLAGS, // GIO_AVAILABLE_ENUMERATOR_IN_2_74 = 0,
    G_APPLICATION_IS_SERVICE  =          (1 << 0),
    G_APPLICATION_IS_LAUNCHER =          (1 << 1),

    G_APPLICATION_HANDLES_OPEN =         (1 << 2),
    G_APPLICATION_HANDLES_COMMAND_LINE = (1 << 3),
    G_APPLICATION_SEND_ENVIRONMENT    =  (1 << 4),

    G_APPLICATION_NON_UNIQUE =           (1 << 5),

    G_APPLICATION_CAN_OVERRIDE_APP_ID =  (1 << 6),
    G_APPLICATION_ALLOW_REPLACEMENT   =  (1 << 7),
    G_APPLICATION_REPLACE             =  (1 << 8)
}
deprecated("GIO_DEPRECATED_ENUMERATOR_IN_2_74_FOR(G_APPLICATION_DEFAULT_FLAGS)")
enum GApplicationFlags
    G_APPLICATION_FLAGS_NONE = 0; // GIO_DEPRECATED_ENUMERATOR_IN_2_74_FOR(G_APPLICATION_DEFAULT_FLAGS),

alias GTlsError = int;
enum : GTlsError
{
    G_TLS_ERROR_UNAVAILABLE,
    G_TLS_ERROR_MISC,
    G_TLS_ERROR_BAD_CERTIFICATE,
    G_TLS_ERROR_NOT_TLS,
    G_TLS_ERROR_HANDSHAKE,
    G_TLS_ERROR_CERTIFICATE_REQUIRED,
    G_TLS_ERROR_EOF,
    G_TLS_ERROR_INAPPROPRIATE_FALLBACK,
    G_TLS_ERROR_BAD_CERTIFICATE_PASSWORD
}

alias GTlsCertificateFlags = int;
enum : GTlsCertificateFlags
{
    G_TLS_CERTIFICATE_NO_FLAGS = 0, // GIO_AVAILABLE_ENUMERATOR_IN_2_74
    G_TLS_CERTIFICATE_UNKNOWN_CA    = (1 << 0),
    G_TLS_CERTIFICATE_BAD_IDENTITY  = (1 << 1),
    G_TLS_CERTIFICATE_NOT_ACTIVATED = (1 << 2),
    G_TLS_CERTIFICATE_EXPIRED       = (1 << 3),
    G_TLS_CERTIFICATE_REVOKED       = (1 << 4),
    G_TLS_CERTIFICATE_INSECURE      = (1 << 5),
    G_TLS_CERTIFICATE_GENERIC_ERROR = (1 << 6),

    G_TLS_CERTIFICATE_VALIDATE_ALL  = 0x007f
}

alias GTlsAuthenticationMode = int;
enum : GTlsAuthenticationMode
{
    G_TLS_AUTHENTICATION_NONE,
    G_TLS_AUTHENTICATION_REQUESTED,
    G_TLS_AUTHENTICATION_REQUIRED
}


//GIO_AVAILABLE_TYPE_IN_2_66
alias GTlsChannelBindingType = int;
enum : GTlsChannelBindingType
{
    G_TLS_CHANNEL_BINDING_TLS_UNIQUE,
    G_TLS_CHANNEL_BINDING_TLS_SERVER_END_POINT,
    G_TLS_CHANNEL_BINDING_TLS_EXPORTER // GIO_AVAILABLE_ENUMERATOR_IN_2_74,
}

//GIO_AVAILABLE_TYPE_IN_2_66
alias GTlsChannelBindingError = int;
enum : GTlsChannelBindingError
{
    G_TLS_CHANNEL_BINDING_ERROR_NOT_IMPLEMENTED,
    G_TLS_CHANNEL_BINDING_ERROR_INVALID_STATE,
    G_TLS_CHANNEL_BINDING_ERROR_NOT_AVAILABLE,
    G_TLS_CHANNEL_BINDING_ERROR_NOT_SUPPORTED,
    G_TLS_CHANNEL_BINDING_ERROR_GENERAL_ERROR
}

//GIO_DEPRECATED_TYPE_IN_2_60
/*
typedef enum {
  G_TLS_REHANDSHAKE_NEVER,
  G_TLS_REHANDSHAKE_SAFELY,
  G_TLS_REHANDSHAKE_UNSAFELY
} GTlsRehandshakeMode GIO_DEPRECATED_TYPE_IN_2_60;
*/

alias GTlsPasswordFlags = int;
enum : GTlsPasswordFlags
{
    G_TLS_PASSWORD_NONE = 0,
    G_TLS_PASSWORD_RETRY = 1 << 1,
    G_TLS_PASSWORD_MANY_TRIES = 1 << 2,
    G_TLS_PASSWORD_FINAL_TRY = 1 << 3,
    G_TLS_PASSWORD_PKCS11_USER = 1 << 4,
    G_TLS_PASSWORD_PKCS11_SECURITY_OFFICER = 1 << 5,
    G_TLS_PASSWORD_PKCS11_CONTEXT_SPECIFIC = 1 << 6
}

alias GTlsInteractionResult = int;
enum : GTlsInteractionResult
{
    G_TLS_INTERACTION_UNHANDLED,
    G_TLS_INTERACTION_HANDLED,
    G_TLS_INTERACTION_FAILED
}

alias GDBusInterfaceSkeletonFlags = int;
enum : GDBusInterfaceSkeletonFlags
{
    G_DBUS_INTERFACE_SKELETON_FLAGS_NONE = 0,
    G_DBUS_INTERFACE_SKELETON_FLAGS_HANDLE_METHOD_INVOCATIONS_IN_THREAD = (1<<0)
}

alias GDBusObjectManagerClientFlags = int;
enum : GDBusObjectManagerClientFlags
{
    G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_NONE = 0,
    G_DBUS_OBJECT_MANAGER_CLIENT_FLAGS_DO_NOT_AUTO_START = (1<<0)
}

alias GTlsDatabaseVerifyFlags = int;
enum : GTlsDatabaseVerifyFlags /*< flags >*/
{
    G_TLS_DATABASE_VERIFY_NONE = 0
}

alias GTlsDatabaseLookupFlags = int;
enum : GTlsDatabaseLookupFlags
{
    G_TLS_DATABASE_LOOKUP_NONE = 0,
    G_TLS_DATABASE_LOOKUP_KEYPAIR = 1
}

alias GTlsCertificateRequestFlags = int;
enum : GTlsCertificateRequestFlags
{
    G_TLS_CERTIFICATE_REQUEST_NONE = 0
}

alias GTlsProtocolVersion = int;
enum : GTlsProtocolVersion
{
    G_TLS_PROTOCOL_VERSION_UNKNOWN = 0,
    G_TLS_PROTOCOL_VERSION_SSL_3_0 = 1,
    G_TLS_PROTOCOL_VERSION_TLS_1_0 = 2,
    G_TLS_PROTOCOL_VERSION_TLS_1_1 = 3,
    G_TLS_PROTOCOL_VERSION_TLS_1_2 = 4,
    G_TLS_PROTOCOL_VERSION_TLS_1_3 = 5,
    G_TLS_PROTOCOL_VERSION_DTLS_1_0 = 201,
    G_TLS_PROTOCOL_VERSION_DTLS_1_2 = 202,
}

alias GIOModuleScopeFlags = int;
enum : GIOModuleScopeFlags
{
    G_IO_MODULE_SCOPE_NONE,
    G_IO_MODULE_SCOPE_BLOCK_DUPLICATES
}

alias GSocketClientEvent = int;
enum : GSocketClientEvent
{
    G_SOCKET_CLIENT_RESOLVING,
    G_SOCKET_CLIENT_RESOLVED,
    G_SOCKET_CLIENT_CONNECTING,
    G_SOCKET_CLIENT_CONNECTED,
    G_SOCKET_CLIENT_PROXY_NEGOTIATING,
    G_SOCKET_CLIENT_PROXY_NEGOTIATED,
    G_SOCKET_CLIENT_TLS_HANDSHAKING,
    G_SOCKET_CLIENT_TLS_HANDSHAKED,
    G_SOCKET_CLIENT_COMPLETE
}

alias GSocketListenerEvent = int;
enum : GSocketListenerEvent
{
    G_SOCKET_LISTENER_BINDING,
    G_SOCKET_LISTENER_BOUND,
    G_SOCKET_LISTENER_LISTENING,
    G_SOCKET_LISTENER_LISTENED
}

alias GTestDBusFlags = int;
enum : GTestDBusFlags /*< flags >*/
{
    G_TEST_DBUS_NONE = 0
}

alias GSubprocessFlags = uint;
enum : GSubprocessFlags
{
    G_SUBPROCESS_FLAGS_NONE                  = 0,
    G_SUBPROCESS_FLAGS_STDIN_PIPE            = (1u << 0),
    G_SUBPROCESS_FLAGS_STDIN_INHERIT         = (1u << 1),
    G_SUBPROCESS_FLAGS_STDOUT_PIPE           = (1u << 2),
    G_SUBPROCESS_FLAGS_STDOUT_SILENCE        = (1u << 3),
    G_SUBPROCESS_FLAGS_STDERR_PIPE           = (1u << 4),
    G_SUBPROCESS_FLAGS_STDERR_SILENCE        = (1u << 5),
    G_SUBPROCESS_FLAGS_STDERR_MERGE          = (1u << 6),
    G_SUBPROCESS_FLAGS_INHERIT_FDS           = (1u << 7),
    G_SUBPROCESS_FLAGS_SEARCH_PATH_FROM_ENVP = (1u << 8)
}

alias GNotificationPriority = int;
enum : GNotificationPriority
{
    G_NOTIFICATION_PRIORITY_NORMAL,
    G_NOTIFICATION_PRIORITY_LOW,
    G_NOTIFICATION_PRIORITY_HIGH,
    G_NOTIFICATION_PRIORITY_URGENT
}

alias GNetworkConnectivity = int;
enum : GNetworkConnectivity
{
    G_NETWORK_CONNECTIVITY_LOCAL       = 1,
    G_NETWORK_CONNECTIVITY_LIMITED     = 2,
    G_NETWORK_CONNECTIVITY_PORTAL      = 3,
    G_NETWORK_CONNECTIVITY_FULL        = 4
}

alias GPollableReturn = int;
enum : GPollableReturn
{
    G_POLLABLE_RETURN_FAILED       = 0,
    G_POLLABLE_RETURN_OK           = 1,
    G_POLLABLE_RETURN_WOULD_BLOCK  = -G_IO_ERROR_WOULD_BLOCK
}

alias GMemoryMonitorWarningLevel = int;
enum : GMemoryMonitorWarningLevel
{
    G_MEMORY_MONITOR_WARNING_LEVEL_LOW      = 50,
    G_MEMORY_MONITOR_WARNING_LEVEL_MEDIUM   = 100,
    G_MEMORY_MONITOR_WARNING_LEVEL_CRITICAL = 255
}
