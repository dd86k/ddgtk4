module ddgtk4.gobject.gobject;

import ddloader;
import ddgtk4.gobject;
public import ddgtk4.glib.gtypes   : guint, gint, gpointer, gchar;
public import ddgtk4.glib.gmacros  : gsize;
public import ddgtk4.gobject.gtype : GType, GTypeInstance;
public import core.stdc.stdarg : va_list;

alias GParamFlags = int;
enum : GParamFlags
{
    G_PARAM_READABLE            = 1 << 0,
    G_PARAM_WRITABLE            = 1 << 1,
    G_PARAM_READWRITE           = (G_PARAM_READABLE | G_PARAM_WRITABLE),
    G_PARAM_CONSTRUCT	      = 1 << 2,
    G_PARAM_CONSTRUCT_ONLY      = 1 << 3,
    G_PARAM_LAX_VALIDATION      = 1 << 4,
    G_PARAM_STATIC_NAME	      = 1 << 5,
    G_PARAM_STATIC_NICK	      = 1 << 6,
    G_PARAM_STATIC_BLURB	      = 1 << 7,
    /* User defined flags go here */
    G_PARAM_EXPLICIT_NOTIFY     = 1 << 30,
    /* Avoid warning with -Wpedantic for gcc6 */
    G_PARAM_DEPRECATED          = cast(gint)(1u << 31)
}
deprecated enum GOBJECT_DEPRECATED_ENUMERATOR_IN_2_26 = G_PARAM_STATIC_NAME;

// gdataset.h
struct GData;
// gslist.h
struct GSList;
/*struct _GSList
{
    gpointer data;
    GSList *next;
};*/

struct GTypeClass
{
    /*< private >*/
    GType g_type;
}

struct GObject
{
    align(1):
    GTypeInstance  g_type_instance;

    /*< private >*/
    guint          ref_count;  /* (atomic) */
    GData         *qdata;
}
alias GInitiallyUnowned = GObject;
 
struct GObjectClass
{
    align(1):
    GTypeClass   g_type_class;

    /*< private >*/
    GSList      *construct_properties;

    /*< public >*/
    /* seldom overridden */
    GObject* function(GType, guint, GObjectConstructParam*) constructor;
    
    /* overridable methods */
    void function(GObject*, guint, const(GValue)*, GParamSpec*) set_property;
    void function(GObject*, guint, GValue*, GParamSpec*) get_property;
    void function(GObject*) dispose;
    void function(GObject*) finalize;
    
    /* seldom overridden */
    void function(GObject*, guint, GParamSpec**) dispatch_properties_changed;
    
    /* signals */
    void function(GObject*, GParamSpec*) notify;

    /* called when done constructing */
    void function(GObject*) constructed;

    /*< private >*/
    gsize flags;

    gsize n_construct_properties;

    gpointer pspecs;
    gsize n_pspecs;

    /* padding */
    gpointer[3] pdummy;
}
alias GInitiallyUnownedClass = GObjectClass;
 
struct GObjectConstructParam;

// Functions
extern (C)
__gshared
{
    GObject* function(GType, const(gchar)*, ...) g_object_new;
    GObject* function(GType, const(gchar)*, va_list) g_object_new_valist;
    GObject* function(GType, guint, const(char*)*, const(GValue)*) g_object_new_with_properties;
    
    void function(gpointer, const(gchar)*, ...) g_object_set;
    void function(gpointer) g_object_unref;
    void function(GObject*, const(gchar)*, const(GValue)*) g_object_set_property;
    void function(GObject*, const(gchar)*, const(GValue)*) g_object_get_property;
    
    void function(GObjectClass*, guint, GParamSpec*) g_object_class_install_property;
}

version (Windows)
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0-0.dll", // MSYS2
        "gobject-2.0-0.dll",
        "gobject-2.dll"
    ];
}
else version (OSX)
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0.0.dylib"
    ];
}
else
{
    private immutable string[] libNamesGObject = [
        "libgobject-2.0.so.0"
    ];
}

private __gshared DynamicLibrary libgobject;
void loadgobject()
{
    // Let caller catch exceptions
    libgobject = libraryLoad(libNamesGObject);
    
    // gobject
    libraryBind(libgobject, cast(void**)&g_object_new, "g_object_new");
    libraryBind(libgobject, cast(void**)&g_object_new_valist, "g_object_new_valist");
    libraryBind(libgobject, cast(void**)&g_object_new_with_properties, "g_object_new_with_properties");
    libraryBind(libgobject, cast(void**)&g_object_set, "g_object_set");
    libraryBind(libgobject, cast(void**)&g_object_unref, "g_object_unref");
    libraryBind(libgobject, cast(void**)&g_object_set_property, "g_object_set_property");
    libraryBind(libgobject, cast(void**)&g_object_get_property, "g_object_get_property");
    libraryBind(libgobject, cast(void**)&g_object_class_install_property, "g_object_class_install_property");
    
    // gtype
    libraryBind(libgobject, cast(void**)&g_type_register_static, "g_type_register_static");
    libraryBind(libgobject, cast(void**)&g_type_register_static_simple, "g_type_register_static_simple");
    libraryBind(libgobject, cast(void**)&g_type_register_dynamic, "g_type_register_dynamic");
    libraryBind(libgobject, cast(void**)&g_type_register_fundamental, "g_type_register_fundamental");
    
    // gsignal
    libraryBind(libgobject, cast(void**)&g_signal_connect_data, "g_signal_connect_data");
    
    // GValue
    libraryBind(libgobject, cast(void**)&g_value_init, "g_value_init");
    libraryBind(libgobject, cast(void**)&g_value_set_schar, "g_value_set_schar");
    libraryBind(libgobject, cast(void**)&g_value_get_schar, "g_value_get_schar");
    libraryBind(libgobject, cast(void**)&g_value_set_uchar, "g_value_set_uchar");
    libraryBind(libgobject, cast(void**)&g_value_get_uchar, "g_value_get_uchar");
    libraryBind(libgobject, cast(void**)&g_value_set_boolean, "g_value_set_boolean");
    libraryBind(libgobject, cast(void**)&g_value_get_boolean, "g_value_get_boolean");
    libraryBind(libgobject, cast(void**)&g_value_set_int, "g_value_set_int");
    libraryBind(libgobject, cast(void**)&g_value_get_int, "g_value_get_int");
    libraryBind(libgobject, cast(void**)&g_value_set_uint, "g_value_set_uint");
    libraryBind(libgobject, cast(void**)&g_value_get_uint, "g_value_get_uint");
    libraryBind(libgobject, cast(void**)&g_value_set_long, "g_value_set_long");
    libraryBind(libgobject, cast(void**)&g_value_get_long, "g_value_get_long");
    libraryBind(libgobject, cast(void**)&g_value_set_ulong, "g_value_set_ulong");
    libraryBind(libgobject, cast(void**)&g_value_get_ulong, "g_value_get_ulong");
    libraryBind(libgobject, cast(void**)&g_value_set_int64, "g_value_set_int64");
    libraryBind(libgobject, cast(void**)&g_value_get_int64, "g_value_get_int64");
    libraryBind(libgobject, cast(void**)&g_value_set_uint64, "g_value_set_uint64");
    libraryBind(libgobject, cast(void**)&g_value_get_uint64, "g_value_get_uint64");
    libraryBind(libgobject, cast(void**)&g_value_set_float, "g_value_set_float");
    libraryBind(libgobject, cast(void**)&g_value_get_float, "g_value_get_float");
    libraryBind(libgobject, cast(void**)&g_value_set_double, "g_value_set_double");
    libraryBind(libgobject, cast(void**)&g_value_get_double, "g_value_get_double");
    libraryBind(libgobject, cast(void**)&g_value_set_string, "g_value_set_string");
    libraryBind(libgobject, cast(void**)&g_value_set_static_string, "g_value_set_static_string");
    libraryBind(libgobject, cast(void**)&g_value_get_string, "g_value_get_string");
    libraryBind(libgobject, cast(void**)&g_value_dup_string, "g_value_dup_string");
    libraryBind(libgobject, cast(void**)&g_value_set_pointer, "g_value_set_pointer");
    libraryBind(libgobject, cast(void**)&g_value_get_pointer, "g_value_get_pointer");
    libraryBind(libgobject, cast(void**)&g_gtype_get_type, "g_gtype_get_type");
    libraryBind(libgobject, cast(void**)&g_value_set_gtype, "g_value_set_gtype");
    libraryBind(libgobject, cast(void**)&g_value_get_gtype, "g_value_get_gtype");
    libraryBind(libgobject, cast(void**)&g_value_set_variant, "g_value_set_variant");
    libraryBind(libgobject, cast(void**)&g_value_take_variant, "g_value_take_variant");
    libraryBind(libgobject, cast(void**)&g_value_get_variant, "g_value_get_variant");
    libraryBind(libgobject, cast(void**)&g_value_dup_variant, "g_value_dup_variant");
    libraryBind(libgobject, cast(void**)&g_pointer_type_register_static, "g_pointer_type_register_static");
    libraryBind(libgobject, cast(void**)&g_strdup_value_contents, "g_strdup_value_contents");
    libraryBind(libgobject, cast(void**)&g_value_take_string, "g_value_take_string");
    
    // GParamSpecs
    libraryBind(libgobject, cast(void**)&g_param_spec_char, "g_param_spec_char");
    libraryBind(libgobject, cast(void**)&g_param_spec_uchar, "g_param_spec_uchar");
    libraryBind(libgobject, cast(void**)&g_param_spec_boolean, "g_param_spec_boolean");
    libraryBind(libgobject, cast(void**)&g_param_spec_int, "g_param_spec_int");
    libraryBind(libgobject, cast(void**)&g_param_spec_uint, "g_param_spec_uint");
    libraryBind(libgobject, cast(void**)&g_param_spec_long, "g_param_spec_long");
    libraryBind(libgobject, cast(void**)&g_param_spec_ulong, "g_param_spec_ulong");
    libraryBind(libgobject, cast(void**)&g_param_spec_int64, "g_param_spec_int64");
    libraryBind(libgobject, cast(void**)&g_param_spec_uint64, "g_param_spec_uint64");
    libraryBind(libgobject, cast(void**)&g_param_spec_unichar, "g_param_spec_unichar");
    libraryBind(libgobject, cast(void**)&g_param_spec_enum, "g_param_spec_enum");
    libraryBind(libgobject, cast(void**)&g_param_spec_flags, "g_param_spec_flags");
    libraryBind(libgobject, cast(void**)&g_param_spec_float, "g_param_spec_float");
    libraryBind(libgobject, cast(void**)&g_param_spec_double, "g_param_spec_double");
    libraryBind(libgobject, cast(void**)&g_param_spec_string, "g_param_spec_string");
    libraryBind(libgobject, cast(void**)&g_param_spec_param, "g_param_spec_param");
    libraryBind(libgobject, cast(void**)&g_param_spec_boxed, "g_param_spec_boxed");
    libraryBind(libgobject, cast(void**)&g_param_spec_pointer, "g_param_spec_pointer");
    libraryBind(libgobject, cast(void**)&g_param_spec_value_array, "g_param_spec_value_array");
    libraryBind(libgobject, cast(void**)&g_param_spec_object, "g_param_spec_object");
    libraryBind(libgobject, cast(void**)&g_param_spec_override, "g_param_spec_override");
    libraryBind(libgobject, cast(void**)&g_param_spec_gtype, "g_param_spec_gtype");
    libraryBind(libgobject, cast(void**)&g_param_spec_variant, "g_param_spec_variant");
}