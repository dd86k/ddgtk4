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
{
    alias A_g_simple_action_new = GSimpleAction* function(const(gchar) *name, const(GVariantType) *parameter_type);
}

__gshared
{
    A_g_simple_action_new g_simple_action_new;
}