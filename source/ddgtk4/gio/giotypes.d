module ddgtk4.gio.giotypes;

struct GAppLaunchContext;
struct GAppInfo; /* Dummy typedef */
struct GAsyncResult; /* Dummy typedef */
struct GAsyncInitable;
struct GBufferedInputStream;
struct GBufferedOutputStream;
struct GCancellable;
struct GCharsetConverter;
struct GConverter;
struct GConverterInputStream;
struct GConverterOutputStream;
struct GDatagramBased;
struct GDataInputStream;
struct GSimplePermission;
struct GZlibCompressor;
struct GZlibDecompressor;

struct GSimpleActionGroup;
struct GRemoteActionGroup;
struct GDBusActionGroup;
struct GActionMap;
struct GActionGroup;
struct GPropertyAction;
struct GSimpleAction;
struct GAction;
struct GApplication;
struct GApplicationCommandLine;
struct GSettingsBackend;
struct GSettings;
struct GPermission;

struct GMenuModel;
struct GNotification;

struct GDrive; /* Dummy typedef */
struct GFileEnumerator;
struct GFileMonitor;
struct GFilterInputStream;
struct GFilterOutputStream;

struct GFile; /* Dummy typedef */
struct GFileInfo;

/**
 * GFileAttributeMatcher:
 *
 * Determines if a string matches a file attribute.
 **/
struct GFileAttributeMatcher;
struct GFileAttributeInfo;
struct GFileAttributeInfoList;
struct GFileInputStream;
struct GFileOutputStream;
struct GFileIOStream;
struct GFileIcon;
struct GFilenameCompleter;


struct GIcon; /* Dummy typedef */
struct GInetAddress;
struct GInetAddressMask;
struct GInetSocketAddress;
struct GNativeSocketAddress;
struct GInputStream;
struct GInitable;
struct GIOModule;
struct GIOExtensionPoint;
struct GIOExtension;

/**
 * GIOSchedulerJob:
 *
 * Opaque class for defining and scheduling IO jobs.
 *
 * Deprecated: 2.36: Use [struct@GLib.ThreadPool] or
 *   [method@Gio.Task.run_in_thread]
 **/
struct GIOSchedulerJob;
struct GIOStreamAdapter;
struct GLoadableIcon; /* Dummy typedef */
struct GBytesIcon;
struct GMemoryInputStream;
struct GMemoryOutputStream;

struct GMount; /* Dummy typedef */
struct GMountOperation;
struct GNetworkAddress;
struct GNetworkMonitor;
struct GNetworkService;
struct GOutputStream;
struct GIOStream;
struct GSimpleIOStream;
struct GPollableInputStream; /* Dummy typedef */
struct GPollableOutputStream; /* Dummy typedef */
struct GResolver;

struct GResource;
struct GSeekable;
struct GSimpleAsyncResult;

struct GSocket;

struct GSocketControlMessage;
struct GSocketClient;
struct GSocketConnection;
struct GSocketListener;
struct GSocketService;
struct GSocketAddress;
struct GSocketAddressEnumerator;
struct GSocketConnectable;
struct GSrvTarget;
struct GTask;
struct GTcpConnection;
struct GTcpWrapperConnection;
struct GThreadedSocketService;
struct GDtlsConnection;
struct GDtlsClientConnection; /* Dummy typedef */
struct GDtlsServerConnection; /* Dummy typedef */
struct GThemedIcon;
struct GTlsCertificate;
struct GTlsClientConnection; /* Dummy typedef */
struct GTlsConnection;
struct GTlsDatabase;
struct GTlsFileDatabase;
struct GTlsInteraction;
struct GTlsPassword;
struct GTlsServerConnection; /* Dummy typedef */
struct GVfs; /* Dummy typedef */

struct GProxyResolver;
struct GProxy;
struct GProxyAddress;
struct GProxyAddressEnumerator;

struct GVolume; /* Dummy typedef */
struct GVolumeMonitor;