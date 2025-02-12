module ddgtk4.gio.gsimpleaction;

import ddgtk4.gio.giotypes;
import ddgtk4.glib.gtypes;
import ddgtk4.glib.gvarianttype;

// Macros
pragma(inline, true)
{
    
}

// Function
extern (C)
__gshared
{
    GSimpleAction* function(const(gchar)        *name,
                            const(GVariantType) *parameter_type) g_simple_action_new;
}