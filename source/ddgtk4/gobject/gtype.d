module ddgtk4.gobject.gtype;

import ddgtk4.glib.gmacros : guintptr, gsize;
import ddgtk4.glib.gtypes;
import core.stdc.config    : c_long;

// GLIB_SIZEOF_VOID_P > GLIB_SIZEOF_SIZE_T
static if ((void*).sizeof > size_t.sizeof)
    public alias GType = guintptr;
// GLIB_SIZEOF_SIZE_T != GLIB_SIZEOF_LONG || !defined (G_CXX_STD_VERSION)
else static if (size_t.sizeof != c_long.sizeof)
    public alias GType = gsize;
else // for historic reasons, C++ on non-Morello/CHERI systems links against gulong GTypes
    public alias GType = gulong;

union  GTypeCValue;
struct GTypePlugin;
struct GTypeClass;
struct GTypeInterface;
struct GTypeFundamentalInfo;
struct GInterfaceInfo;
struct GTypeValueTable;
struct GTypeQuery;

struct GTypeInstance
{
    /*< private >*/
    GTypeClass *g_class;
}

alias GBaseInitFunc      = void function(gpointer);
alias GBaseFinalizeFunc  = void function(gpointer);
alias GClassInitFunc     = void function(gpointer, gpointer);
alias GClassFinalizeFunc = void function(gpointer, gpointer);
alias GInstanceInitFunc  = void function(GTypeInstance*, gpointer);

alias GTypeFlags = int;
enum : GTypeFlags
{
    G_TYPE_FLAG_NONE = 0, // GOBJECT_AVAILABLE_ENUMERATOR_IN_2_74
    G_TYPE_FLAG_ABSTRACT = (1 << 4),
    G_TYPE_FLAG_VALUE_ABSTRACT = (1 << 5),
    G_TYPE_FLAG_FINAL = (1 << 6), // GOBJECT_AVAILABLE_ENUMERATOR_IN_2_70
    G_TYPE_FLAG_DEPRECATED = (1 << 7) // GOBJECT_AVAILABLE_ENUMERATOR_IN_2_76
}

struct GTypeInfo
{
    align(1):
    /* interface types, classed types, instantiated types */
    guint16                class_size;

    extern (C) GBaseInitFunc          base_init;
    extern (C) GBaseFinalizeFunc      base_finalize;

    /* interface types, classed types, instantiated types */
    extern (C) GClassInitFunc         class_init;
    extern (C) GClassFinalizeFunc     class_finalize;
    gconstpointer          class_data;

    /* instantiated types */
    guint16                instance_size;
    guint16                n_preallocs;
    GInstanceInitFunc      instance_init;

    /* value handling */
    const GTypeValueTable	*value_table;
}

/*
#define G_DECLARE_FINAL_TYPE(ModuleObjName, module_obj_name, MODULE, OBJ_NAME, ParentName) \
  GType module_obj_name##_get_type (void);                                                               \
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                       \
  typedef struct _##ModuleObjName ModuleObjName;                                                         \
  typedef struct { ParentName##Class parent_class; } ModuleObjName##Class;                               \
                                                                                                         \
  _GLIB_DEFINE_AUTOPTR_CHAINUP (ModuleObjName, ParentName)                                               \
  G_DEFINE_AUTOPTR_CLEANUP_FUNC (ModuleObjName##Class, g_type_class_unref)                               \
                                                                                                         \
  G_GNUC_UNUSED static inline ModuleObjName * MODULE##_##OBJ_NAME (gpointer ptr) {                       \
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, module_obj_name##_get_type (), ModuleObjName); }             \
  G_GNUC_UNUSED static inline gboolean MODULE##_IS_##OBJ_NAME (gpointer ptr) {                           \
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, module_obj_name##_get_type ()); }                            \
  G_GNUC_END_IGNORE_DEPRECATIONS
  
#define _GLIB_DEFINE_AUTOPTR_CHAINUP(ModuleObjName, ParentName) \
  _GLIB_DEFINE_AUTOPTR_CLEANUP_FUNCS(ModuleObjName, ParentName, _GLIB_AUTOPTR_CLEAR_FUNC_NAME(ParentName))
  
Example:

G_DECLARE_FINAL_TYPE (FooPerson, foo_person, FOO, PERSON, G_TYPE_OBJECT)

// ... GObject code to define the following properties:
// - name (string)
// - surname (string)
// - age (uint)
// - address (string

GListStore *people_model = g_list_store_new (FOO_TYPE_PERSON);
*/
/*template G_DECLARE_FINAL_TYPE()
{
  
}*/

private enum G_TYPE_FUNDAMENTAL_SHIFT = 2;
private
template G_TYPE_MAKE_FUNDAMENTAL(int x)
{
    enum GType G_TYPE_MAKE_FUNDAMENTAL = cast(GType) ((x) << G_TYPE_FUNDAMENTAL_SHIFT);
}

enum G_TYPE_INVALID     = G_TYPE_MAKE_FUNDAMENTAL! (0);
enum G_TYPE_NONE        = G_TYPE_MAKE_FUNDAMENTAL! (1);
enum G_TYPE_INTERFACE   = G_TYPE_MAKE_FUNDAMENTAL! (2);
enum G_TYPE_CHAR        = G_TYPE_MAKE_FUNDAMENTAL! (3);
enum G_TYPE_UCHAR       = G_TYPE_MAKE_FUNDAMENTAL! (4);
enum G_TYPE_BOOLEAN     = G_TYPE_MAKE_FUNDAMENTAL! (5);
enum G_TYPE_INT         = G_TYPE_MAKE_FUNDAMENTAL! (6);
enum G_TYPE_UINT        = G_TYPE_MAKE_FUNDAMENTAL! (7);
enum G_TYPE_LONG        = G_TYPE_MAKE_FUNDAMENTAL! (8);
enum G_TYPE_ULONG       = G_TYPE_MAKE_FUNDAMENTAL! (9);
enum G_TYPE_INT64       = G_TYPE_MAKE_FUNDAMENTAL! (10);
enum G_TYPE_UINT64      = G_TYPE_MAKE_FUNDAMENTAL! (11);
enum G_TYPE_ENUM        = G_TYPE_MAKE_FUNDAMENTAL! (12);
enum G_TYPE_FLAGS       = G_TYPE_MAKE_FUNDAMENTAL! (13);
enum G_TYPE_FLOAT       = G_TYPE_MAKE_FUNDAMENTAL! (14);
enum G_TYPE_DOUBLE      = G_TYPE_MAKE_FUNDAMENTAL! (15);
enum G_TYPE_STRING      = G_TYPE_MAKE_FUNDAMENTAL! (16);
enum G_TYPE_POINTER     = G_TYPE_MAKE_FUNDAMENTAL! (17);
enum G_TYPE_BOXED       = G_TYPE_MAKE_FUNDAMENTAL! (18);
enum G_TYPE_PARAM       = G_TYPE_MAKE_FUNDAMENTAL! (19);
enum G_TYPE_OBJECT      = G_TYPE_MAKE_FUNDAMENTAL! (20);
enum G_TYPE_VARIANT     = G_TYPE_MAKE_FUNDAMENTAL! (21);


//#define G_DEFINE_TYPE(TN, t_n, T_P)			    G_DEFINE_TYPE_EXTENDED (TN, t_n, T_P, 0, {})
/*template G_DEFINE_TYPE(string name, string name, int parent_type)
{
    
}*/
//#define G_DEFINE_TYPE_EXTENDED(TN, t_n, T_P, _f_, _C_)	    _G_DEFINE_TYPE_EXTENDED_BEGIN (TN, t_n, T_P, _f_) {_C_;} _G_DEFINE_TYPE_EXTENDED_END()

//#define GTK_TYPE_WEATHER_INFO (gtk_weather_info_get_type ())
//G_DECLARE_FINAL_TYPE (GtkWeatherInfo, gtk_weather_info, GTK, WEATHER_INFO, GObject)
//https://stackoverflow.com/a/26698287
//https://toshiocp.github.io/Gobject-tutorial/sec3.html
// https://docs.gtk.org/gobject/struct.TypeInfo.html
// https://docs.gtk.org/gobject/func.type_register_static.html
// define struct _GTypeInfo ?
// g_type_register_static ... ?

// Functions
extern (C)
__gshared
{
    GType function(GType, const(gchar)*, const(GTypeInfo)*, GTypeFlags) g_type_register_static;
    GType function(GType, const(gchar)*, guint, GClassInitFunc, guint, GInstanceInitFunc, GTypeFlags)
        g_type_register_static_simple;
    GType function(GType, const(gchar)*, GTypePlugin*, GTypeFlags) g_type_register_dynamic;
    GType function(GType, const(gchar)*, const(GTypeInfo)*, const(GTypeFundamentalInfo)*, GTypeFlags)
        g_type_register_fundamental;
}