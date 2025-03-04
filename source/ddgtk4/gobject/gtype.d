module ddgtk4.gobject.gtype;

import ddgtk4.glib.gmacros : guintptr, gsize;
import ddgtk4.glib.gtypes;
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

//struct GValue;
/+
struct _GValue
{
  /*< private >*/
  GType		g_type;

  /* public for GTypeValueTable methods */
  union {
    gint	v_int;
    guint	v_uint;
    glong	v_long;
    gulong	v_ulong;
    gint64      v_int64;
    guint64     v_uint64;
    gfloat	v_float;
    gdouble	v_double;
    gpointer	v_pointer;
  } data[2];
};
+/
struct GValue
{
  /*< private >*/
  GType		g_type;

  /* public for GTypeValueTable methods */
  union _ {
    gint        v_int;
    guint       v_uint;
    glong       v_long;
    gulong      v_ulong;
    gint64      v_int64;
    guint64     v_uint64;
    gfloat      v_float;
    gdouble     v_double;
    gpointer    v_pointer;
  } _[2] data;
}

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