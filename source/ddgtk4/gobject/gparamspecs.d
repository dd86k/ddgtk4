module ddgtk4.gobject.gparamspecs;

public import ddgtk4.glib.gtypes;
public import ddgtk4.glib.gunicode;
public import ddgtk4.gobject.gobject   : GParamFlags;
public import ddgtk4.gobject.gtype     : GType;
public import ddgtk4.glib.gvariant     : GVariant;
public import ddgtk4.glib.gvarianttype : GVariantType;

struct GParamSpec;
/+struct _GParamSpecVariant
{
    GParamSpec    parent_instance;
    GVariantType *type;
    GVariant     *default_value;

    /*< private >*/
    gpointer      padding[4];
};+/

// Functions
extern (C)
__gshared
{
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gint8 minimum,
                         gint8 maximum,
                         gint8 default_value,
                         GParamFlags flags) g_param_spec_char;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         guint8 minimum,
                         guint8 maximum,
                         guint8 default_value,
                         GParamFlags flags) g_param_spec_uchar;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gboolean default_value,
                         GParamFlags flags) g_param_spec_boolean;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gint minimum,
                         gint maximum,
                         gint default_value,
                         GParamFlags flags) g_param_spec_int;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         guint minimum,
                         guint maximum,
                         guint default_value,
                         GParamFlags flags) g_param_spec_uint;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         glong minimum,
                         glong maximum,
                         glong default_value,
                         GParamFlags flags) g_param_spec_long;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gulong minimum,
                         gulong maximum,
                         gulong default_value,
                         GParamFlags flags) g_param_spec_ulong;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gint64 minimum,
                         gint64 maximum,
                         gint64 default_value,
                         GParamFlags flags) g_param_spec_int64;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         guint64 minimum,
                         guint64 maximum,
                         guint64 default_value,
                         GParamFlags flags) g_param_spec_uint64;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gunichar default_value,
                         GParamFlags flags) g_param_spec_unichar;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType enum_type,
                         gint default_value,
                         GParamFlags flags) g_param_spec_enum;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType flags_type,
                         guint default_value,
                         GParamFlags flags) g_param_spec_flags;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gfloat minimum,
                         gfloat maximum,
                         gfloat default_value,
                         GParamFlags flags) g_param_spec_float;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         gdouble minimum,
                         gdouble maximum,
                         gdouble default_value,
                         GParamFlags flags) g_param_spec_double;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         const(gchar) *default_value,
                         GParamFlags flags) g_param_spec_string;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType param_type,
                         GParamFlags flags) g_param_spec_param;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType  boxed_type,
                         GParamFlags  flags) g_param_spec_boxed;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GParamFlags flags) g_param_spec_pointer;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GParamSpec *element_spec,
                         GParamFlags  flags) g_param_spec_value_array;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType  object_type,
                         GParamFlags  flags) g_param_spec_object;
    GParamSpec* function(const(gchar) *name,
                         GParamSpec *overridden) g_param_spec_override;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         GType is_a_type,
                         GParamFlags  flags) g_param_spec_gtype;
    GParamSpec* function(const(gchar) *name,
                         const(gchar) *nick,
                         const(gchar) *blurb,
                         const(GVariantType) *type,
                         GVariant *default_value,
                         GParamFlags flags) g_param_spec_variant;
}