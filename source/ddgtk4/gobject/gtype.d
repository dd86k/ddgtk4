module ddgtk4.gobject.gtype;

import ddgtk4.glib.gmacros : guintptr, gsize;
import ddgtk4.glib.gtypes  : gulong;
import core.stdc.config    : c_long;

//#if     GLIB_SIZEOF_VOID_P > GLIB_SIZEOF_SIZE_T
//typedef guintptr                        GType;
//#elif     GLIB_SIZEOF_SIZE_T != GLIB_SIZEOF_LONG || !defined (G_CXX_STD_VERSION)
//typedef gsize                           GType;
//#else   /* for historic reasons, C++ on non-Morello/CHERI systems links against gulong GTypes */
//typedef gulong                          GType;
//#endif
static if ((void*).sizeof > size_t.sizeof)
    alias GType = guintptr;
else static if (size_t.sizeof != c_long.sizeof)
    alias GType = gsize;
else
    alias GType = gulong;

struct GValue;
union  GTypeCValue;
struct GTypePlugin;
struct GTypeClass;
struct GTypeInterface;
struct GTypeInstance;
struct GTypeInfo;
struct GTypeFundamentalInfo;
struct GInterfaceInfo;
struct GTypeValueTable;
struct GTypeQuery;