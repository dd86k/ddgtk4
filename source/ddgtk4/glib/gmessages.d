module ddgtk4.glib.gmessages;

import ddgtk4.glib.gtypes;
import core.stdc.stdarg;

enum G_LOG_DOMAIN = cast(gchar*) 0;

alias GLogLevelFlags = int;
enum : GLogLevelFlags
{
    /* log flags */
    G_LOG_FLAG_RECURSION          = 1 << 0,
    G_LOG_FLAG_FATAL              = 1 << 1,

    /* GLib log levels */
    G_LOG_LEVEL_ERROR             = 1 << 2,       /* always fatal */
    G_LOG_LEVEL_CRITICAL          = 1 << 3,
    G_LOG_LEVEL_WARNING           = 1 << 4,
    G_LOG_LEVEL_MESSAGE           = 1 << 5,
    G_LOG_LEVEL_INFO              = 1 << 6,
    G_LOG_LEVEL_DEBUG             = 1 << 7,

    G_LOG_LEVEL_MASK              = ~(G_LOG_FLAG_RECURSION | G_LOG_FLAG_FATAL)
}

// Functions
extern (C)
__gshared
{
    void function(const(gchar) *fmt, ...) g_print;
    void function(const(gchar) *fmt, ...) g_printerr;
    
    void function(const(gchar)   *log_domain,
                  GLogLevelFlags  log_level,
                  const(gchar)   *format,
                  ...) g_log;
    void function(const(gchar)   *log_domain,
                  GLogLevelFlags  log_level,
                  const(gchar)   *format,
                  va_list) g_logv;
}

// Inlined functions
extern (C)
{
    void g_message(const gchar *format, ...)
    {
        va_list args = void;
        va_start (args, format);
        g_logv (G_LOG_DOMAIN, G_LOG_LEVEL_MESSAGE, format, args);
        va_end (args);
    }
    void g_critical(const gchar *format, ...)
    {
        va_list args = void;
        va_start (args, format);
        g_logv (G_LOG_DOMAIN, G_LOG_LEVEL_CRITICAL, format, args);
        va_end (args);
    }
    void g_warning(const gchar *format, ...)
    {
        va_list args = void;
        va_start (args, format);
        g_logv (G_LOG_DOMAIN, G_LOG_LEVEL_WARNING, format, args);
        va_end (args);
    }
    void g_info(const gchar *format, ...)
    {
        va_list args = void;
        va_start (args, format);
        g_logv (G_LOG_DOMAIN, G_LOG_LEVEL_INFO, format, args);
        va_end (args);
    }
    void g_debug(const gchar *format, ...)
    {
        va_list args = void;
        va_start (args, format);
        g_logv (G_LOG_DOMAIN, G_LOG_LEVEL_DEBUG, format, args);
        va_end (args);
    }
}