module ddgtk4.glib.glibconfig;

version (Windows)
{
    import core.sys.windows.winsock2;
    alias GLIB_SYSDEF_MSG_OOB       = MSG_OOB;
    alias GLIB_SYSDEF_MSG_PEEK      = MSG_PEEK;
    alias GLIB_SYSDEF_MSG_DONTROUTE = MSG_DONTROUTE;
    alias GLIB_SYSDEF_AF_UNIX       = AF_UNIX;
    alias GLIB_SYSDEF_AF_INET       = AF_INET;
    alias GLIB_SYSDEF_AF_INET6      = AF_INET6;
}
else version (Posix)
{
    import core.sys.posix.sys.msg;
    alias GLIB_SYSDEF_MSG_OOB       = MSG_OOB;
    alias GLIB_SYSDEF_MSG_PEEK      = MSG_PEEK;
    alias GLIB_SYSDEF_MSG_DONTROUTE = MSG_DONTROUTE;
    
    import core.sys.posix.sys.socket;
    alias GLIB_SYSDEF_AF_UNIX  = AF_UNIX;
    alias GLIB_SYSDEF_AF_INET  = AF_INET;
    alias GLIB_SYSDEF_AF_INET6 = AF_INET6;
}
else
    static assert(false, "Implement glibconfig.d");

/*
poll_defines = [
  [ 'POLLIN', 'g_pollin', 1 ],
  [ 'POLLOUT', 'g_pollout', 4 ],
  [ 'POLLPRI', 'g_pollpri', 2 ],
  [ 'POLLERR', 'g_pollerr', 8 ],
  [ 'POLLHUP', 'g_pollhup', 16 ],
  [ 'POLLNVAL', 'g_pollnval', 32 ],
]

#define GLIB_SYSDEF_POLLIN =@g_pollin@
#define GLIB_SYSDEF_POLLOUT =@g_pollout@
#define GLIB_SYSDEF_POLLPRI =@g_pollpri@
#define GLIB_SYSDEF_POLLHUP =@g_pollhup@
#define GLIB_SYSDEF_POLLERR =@g_pollerr@
#define GLIB_SYSDEF_POLLNVAL =@g_pollnval@

typedef @g_pid_type@ GPid;
#define G_PID_FORMAT @g_pid_format@

#define G_DIR_SEPARATOR '@g_dir_separator@'
#define G_DIR_SEPARATOR_S "@g_dir_separator@"
#define G_SEARCHPATH_SEPARATOR '@g_searchpath_separator@'
#define G_SEARCHPATH_SEPARATOR_S "@g_searchpath_separator@"
*/
