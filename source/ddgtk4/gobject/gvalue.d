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
{
    alias A_g_value_init = GValue* function(GValue*, GType);
    // gvaluetypes.h
    alias A_g_value_set_schar = void function(GValue*, gint8);
    alias A_g_value_get_schar = gint8 function(const(GValue)*);
    alias A_g_value_set_uchar = void function(GValue*, guchar v_uchar);
    alias A_g_value_get_uchar = guchar function(const(GValue)*);
    alias A_g_value_set_boolean = void function(GValue*, gboolean);
    alias A_g_value_get_boolean = gboolean function(const(GValue)*);
    alias A_g_value_set_int = void function(GValue*, gint);
    alias A_g_value_get_int = gint function(const(GValue)*);
    alias A_g_value_set_uint = void function(GValue*, guint);
    alias A_g_value_get_uint = guint function(const(GValue)*);
    alias A_g_value_set_long = void function(GValue*value, glong);
    alias A_g_value_get_long = glong function(const(GValue)*);
    alias A_g_value_set_ulong = void function(GValue*, gulong);
    alias A_g_value_get_ulong = gulong function(const(GValue)*);
    alias A_g_value_set_int64 = void function(GValue*, gint64);
    alias A_g_value_get_int64 = gint64 function(const(GValue)*);
    alias A_g_value_set_uint64 = void function(GValue*, guint64);
    alias A_g_value_get_uint64 = guint64 function(const(GValue)*);
    alias A_g_value_set_float = void function(GValue*, gfloat);
    alias A_g_value_get_float = gfloat function(const(GValue)*);
    alias A_g_value_set_double = void function(GValue*, gdouble);
    alias A_g_value_get_double = gdouble function(const(GValue)*);
    alias A_g_value_set_string = void function(GValue*, const(gchar)*);
    alias A_g_value_set_static_string = void function(GValue*, const(gchar)*);

    //GOBJECT_AVAILABLE_IN_2_66
    //void		      g_value_set_interned_string (GValue      *value,
    //						   const gchar  *v_string);
    alias A_g_value_get_string = const(gchar)* function(const(GValue)*);
    alias A_g_value_dup_string = gchar* function(const(GValue)*);

    //GOBJECT_AVAILABLE_IN_2_80
    //gchar*		      g_value_steal_string	(GValue *value);
    alias A_g_value_set_pointer = void function(GValue*, gpointer);
    alias A_g_value_get_pointer = gpointer function(const(GValue)*);
    alias A_g_gtype_get_type = GType function();
    alias A_g_value_set_gtype = void function(GValue*, GType);
    alias A_g_value_get_gtype = GType function(const(GValue)*);
    alias A_g_value_set_variant = void function(GValue*, GVariant*);
    alias A_g_value_take_variant = void function(GValue*, GVariant*);
    alias A_g_value_get_variant = GVariant* function(const(GValue)*);
    alias A_g_value_dup_variant = GVariant* function(const(GValue)*);
    alias A_g_pointer_type_register_static = /* Convenience for registering new pointer types */ GType function(const(gchar)*);
    alias A_g_strdup_value_contents = /* debugging aid, describe value contents as string */ gchar* function(const(GValue)*);
    alias A_g_value_take_string = void function(GValue*, gchar*);
}

__gshared
{
    A_g_value_init g_value_init;
    A_g_value_set_schar g_value_set_schar;
    A_g_value_get_schar g_value_get_schar;
    A_g_value_set_uchar g_value_set_uchar;
    A_g_value_get_uchar g_value_get_uchar;
    A_g_value_set_boolean g_value_set_boolean;
    A_g_value_get_boolean g_value_get_boolean;
    A_g_value_set_int g_value_set_int;
    A_g_value_get_int g_value_get_int;
    A_g_value_set_uint g_value_set_uint;
    A_g_value_get_uint g_value_get_uint;
    A_g_value_set_long g_value_set_long;
    A_g_value_get_long g_value_get_long;
    A_g_value_set_ulong g_value_set_ulong;
    A_g_value_get_ulong g_value_get_ulong;
    A_g_value_set_int64 g_value_set_int64;
    A_g_value_get_int64 g_value_get_int64;
    A_g_value_set_uint64 g_value_set_uint64;
    A_g_value_get_uint64 g_value_get_uint64;
    A_g_value_set_float g_value_set_float;
    A_g_value_get_float g_value_get_float;
    A_g_value_set_double g_value_set_double;
    A_g_value_get_double g_value_get_double;
    A_g_value_set_string g_value_set_string;
    A_g_value_set_static_string g_value_set_static_string;
    A_g_value_get_string g_value_get_string;
    A_g_value_dup_string g_value_dup_string;
    A_g_value_set_pointer g_value_set_pointer;
    A_g_value_get_pointer g_value_get_pointer;
    A_g_gtype_get_type g_gtype_get_type;
    A_g_value_set_gtype g_value_set_gtype;
    A_g_value_get_gtype g_value_get_gtype;
    A_g_value_set_variant g_value_set_variant;
    A_g_value_take_variant g_value_take_variant;
    A_g_value_get_variant g_value_get_variant;
    A_g_value_dup_variant g_value_dup_variant;
    A_g_pointer_type_register_static g_pointer_type_register_static;
    A_g_strdup_value_contents g_strdup_value_contents;
    A_g_value_take_string g_value_take_string;
}