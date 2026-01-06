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
__gshared
{
	GType function() g_binding_flags_get_type;
	GType function() g_binding_get_type;

	GBindingFlags function(GBinding *binding) g_binding_get_flags;
	//GOBJECT_DEPRECATED_IN_2_68_FOR(g_binding_dup_source)
	GObject* function(GBinding *binding) g_binding_get_source;
	//GOBJECT_AVAILABLE_IN_2_68
	GObject* function(GBinding *binding) g_binding_dup_source;
	//GOBJECT_DEPRECATED_IN_2_68_FOR(g_binding_dup_target)
	GObject* function(GBinding *binding) g_binding_get_target;
	//GOBJECT_AVAILABLE_IN_2_68
	GObject* function(GBinding *binding) g_binding_dup_target;
	
	const(gchar)* function(GBinding *binding) g_binding_get_source_property;
	const(gchar)* function(GBinding *binding) g_binding_get_target_property;
	
	//GOBJECT_AVAILABLE_IN_2_38
	void function(GBinding *binding) g_binding_unbind;

	GBinding* function(gpointer               source,
			const(gchar)          *source_property,
			gpointer               target,
			const(gchar)          *target_property,
			GBindingFlags          flags)
			g_object_bind_property;
	GBinding* function(gpointer               source,
			const(gchar)          *source_property,
			gpointer               target,
			const(gchar)          *target_property,
			GBindingFlags          flags,
			GBindingTransformFunc  transform_to,
			GBindingTransformFunc  transform_from,
			gpointer               user_data,
			GDestroyNotify         notify)
			g_object_bind_property_full;
	GBinding* function(gpointer               source,
			const(gchar)          *source_property,
			gpointer               target,
			const(gchar)          *target_property,
			GBindingFlags          flags,
			GClosure              *transform_to,
			GClosure              *transform_from)
			g_object_bind_property_with_closures;
}