module ddgtk4.gio.gactionmap;

import ddgtk4.gio.giotypes;

// Macros
pragma(inline, true)
{
    GActionMap* G_ACTION_MAP(void *a)
    {
        return cast(GActionMap*)a;
    }
}

// Functions
extern (C)
__gshared
{
    void function(GActionMap*, GAction*) g_action_map_add_action;
}
