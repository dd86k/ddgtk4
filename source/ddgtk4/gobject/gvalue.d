module ddgtk4.gobject.gvalue;

public import ddgtk4.glib.gtypes;
public import ddgtk4.gobject.gtype : GType;
public import ddgtk4.glib.gtypes   : gint8;
public import ddgtk4.glib.gvariant : GVariant;

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

//alias G_VALUE_INIT = GValue.init;

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_g_value_init")
    GValue* function(GValue*, GType) g_value_init;
    pragma(mangle, "ddgtk4_g_value_set_schar")
    // gvaluetypes.h
    void function(GValue*, gint8) g_value_set_schar;
    pragma(mangle, "ddgtk4_g_value_get_schar")
    gint8 function(const(GValue)*) g_value_get_schar;
    pragma(mangle, "ddgtk4_g_value_set_uchar")
    void function(GValue*, guchar v_uchar) g_value_set_uchar;
    pragma(mangle, "ddgtk4_g_value_get_uchar")
    guchar function(const(GValue)*) g_value_get_uchar;
    pragma(mangle, "ddgtk4_g_value_set_boolean")
    void function(GValue*, gboolean) g_value_set_boolean;
    pragma(mangle, "ddgtk4_g_value_get_boolean")
    gboolean function(const(GValue)*) g_value_get_boolean;
    pragma(mangle, "ddgtk4_g_value_set_int")
    void function(GValue*, gint) g_value_set_int;
    pragma(mangle, "ddgtk4_g_value_get_int")
    gint function(const(GValue)*) g_value_get_int;
    pragma(mangle, "ddgtk4_g_value_set_uint")
    void function(GValue*, guint) g_value_set_uint;
    pragma(mangle, "ddgtk4_g_value_get_uint")
    guint function(const(GValue)*) g_value_get_uint;
    pragma(mangle, "ddgtk4_g_value_set_long")
    void function(GValue*value, glong) g_value_set_long;
    pragma(mangle, "ddgtk4_g_value_get_long")
    glong function(const(GValue)*) g_value_get_long;
    pragma(mangle, "ddgtk4_g_value_set_ulong")
    void function(GValue*, gulong) g_value_set_ulong;
    pragma(mangle, "ddgtk4_g_value_get_ulong")
    gulong function(const(GValue)*) g_value_get_ulong;
    pragma(mangle, "ddgtk4_g_value_set_int64")
    void function(GValue*, gint64) g_value_set_int64;
    pragma(mangle, "ddgtk4_g_value_get_int64")
    gint64 function(const(GValue)*) g_value_get_int64;
    pragma(mangle, "ddgtk4_g_value_set_uint64")
    void function(GValue*, guint64) g_value_set_uint64;
    pragma(mangle, "ddgtk4_g_value_get_uint64")
    guint64 function(const(GValue)*) g_value_get_uint64;
    pragma(mangle, "ddgtk4_g_value_set_float")
    void function(GValue*, gfloat) g_value_set_float;
    pragma(mangle, "ddgtk4_g_value_get_float")
    gfloat function(const(GValue)*) g_value_get_float;
    pragma(mangle, "ddgtk4_g_value_set_double")
    void function(GValue*, gdouble) g_value_set_double;
    pragma(mangle, "ddgtk4_g_value_get_double")
    gdouble function(const(GValue)*) g_value_get_double;
    pragma(mangle, "ddgtk4_g_value_set_string")
    void function(GValue*, const(gchar)*) g_value_set_string;
    pragma(mangle, "ddgtk4_g_value_set_static_string")
    void function(GValue*, const(gchar)*) g_value_set_static_string;

    //GOBJECT_AVAILABLE_IN_2_66
    //void		      g_value_set_interned_string (GValue      *value,
    //						   const gchar  *v_string);
    pragma(mangle, "ddgtk4_g_value_get_string")
    const(gchar)* function(const(GValue)*) g_value_get_string;
    pragma(mangle, "ddgtk4_g_value_dup_string")
    gchar* function(const(GValue)*) g_value_dup_string;
    
    //GOBJECT_AVAILABLE_IN_2_80
    //gchar*		      g_value_steal_string	(GValue *value);
    pragma(mangle, "ddgtk4_g_value_set_pointer")
    void function(GValue*, gpointer) g_value_set_pointer;
    pragma(mangle, "ddgtk4_g_value_get_pointer")
    gpointer function(const(GValue)*) g_value_get_pointer;
    pragma(mangle, "ddgtk4_g_gtype_get_type")
    GType function() g_gtype_get_type;
    pragma(mangle, "ddgtk4_g_value_set_gtype")
    void function(GValue*, GType) g_value_set_gtype;
    pragma(mangle, "ddgtk4_g_value_get_gtype")
    GType function(const(GValue)*) g_value_get_gtype;
    pragma(mangle, "ddgtk4_g_value_set_variant")
    void function(GValue*, GVariant*) g_value_set_variant;
    pragma(mangle, "ddgtk4_g_value_take_variant")
    void function(GValue*, GVariant*) g_value_take_variant;
    pragma(mangle, "ddgtk4_g_value_get_variant")
    GVariant* function(const(GValue)*) g_value_get_variant;
    pragma(mangle, "ddgtk4_g_value_dup_variant")
    GVariant* function(const(GValue)*) g_value_dup_variant;
    pragma(mangle, "ddgtk4_g_pointer_type_register_static")
    /* Convenience for registering new pointer types */
    GType function(const(gchar)*) g_pointer_type_register_static;
    pragma(mangle, "ddgtk4_g_strdup_value_contents")
    /* debugging aid, describe value contents as string */
    gchar* function(const(GValue)*) g_strdup_value_contents;
    pragma(mangle, "ddgtk4_g_value_take_string")
    void function(GValue*, gchar*) g_value_take_string;
}