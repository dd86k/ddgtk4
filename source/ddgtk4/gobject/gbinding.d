module ddgtk4.gobject.gbinding;

import ddgtk4.gobject.gtype : GType;
import ddgtk4.gobject.gobject : GObject;
import ddgtk4.gobject.gclosure : GClosure;

public import ddgtk4.glib.gtypes :
    gboolean, guint, gpointer, gchar, GDestroyNotify;
import ddgtk4.gobject.gvalue : GValue;


struct GBinding;

/*typedef gboolean (* GBindingTransformFunc) (GBinding     *binding,
                                            const GValue *from_value,
                                            GValue       *to_value,
                                            gpointer      user_data);*/
alias GBindingTransformFunc = gboolean function(
	GBinding* binding,
	const(GBinding) *from,
	GValue *to,
	gpointer user);

alias GBindingFlags = int;
enum : GBindingFlags {
	G_BINDING_DEFAULT        = 0,

	G_BINDING_BIDIRECTIONAL  = 1 << 0,
	G_BINDING_SYNC_CREATE    = 1 << 1,
	G_BINDING_INVERT_BOOLEAN = 1 << 2
}

public
extern (C)
{
    alias A_g_binding_flags_get_type = GType function();
    alias A_g_binding_get_type = GType function();
    alias A_g_binding_get_flags = GBindingFlags function(GBinding *binding);
    //GOBJECT_DEPRECATED_IN_2_68_FOR(g_binding_dup_source)
    alias A_g_binding_get_source = GObject* function(GBinding *binding);
    //GOBJECT_AVAILABLE_IN_2_68
    alias A_g_binding_dup_source = GObject* function(GBinding *binding);
    //GOBJECT_DEPRECATED_IN_2_68_FOR(g_binding_dup_target)
    alias A_g_binding_get_target = GObject* function(GBinding *binding);
    //GOBJECT_AVAILABLE_IN_2_68
    alias A_g_binding_dup_target = GObject* function(GBinding *binding);
    alias A_g_binding_get_source_property = const(gchar)* function(GBinding *binding);
    alias A_g_binding_get_target_property = const(gchar)* function(GBinding *binding);
    //GOBJECT_AVAILABLE_IN_2_38
    alias A_g_binding_unbind = void function(GBinding *binding);
    alias A_g_object_bind_property = GBinding* function(gpointer source, const(gchar) *source_property, gpointer target, const(gchar) *target_property, GBindingFlags flags);
    alias A_g_object_bind_property_full = GBinding* function(gpointer source, const(gchar) *source_property, gpointer target, const(gchar) *target_property, GBindingFlags flags, GBindingTransformFunc transform_to, GBindingTransformFunc transform_from, gpointer user_data, GDestroyNotify notify);
    alias A_g_object_bind_property_with_closures = GBinding* function(gpointer source, const(gchar) *source_property, gpointer target, const(gchar) *target_property, GBindingFlags flags, GClosure *transform_to, GClosure *transform_from);
}

public
__gshared
{
    A_g_binding_flags_get_type g_binding_flags_get_type;
    A_g_binding_get_type g_binding_get_type;
    A_g_binding_get_flags g_binding_get_flags;
    A_g_binding_get_source g_binding_get_source;
    A_g_binding_dup_source g_binding_dup_source;
    A_g_binding_get_target g_binding_get_target;
    A_g_binding_dup_target g_binding_dup_target;
    A_g_binding_get_source_property g_binding_get_source_property;
    A_g_binding_get_target_property g_binding_get_target_property;
    A_g_binding_unbind g_binding_unbind;
    A_g_object_bind_property g_object_bind_property;
    A_g_object_bind_property_full g_object_bind_property_full;
    A_g_object_bind_property_with_closures g_object_bind_property_with_closures;
}