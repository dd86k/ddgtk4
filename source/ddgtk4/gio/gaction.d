module ddgtk4.gio.gaction;

import ddgtk4.gio.giotypes;

// Macros
pragma(inline, true)
{
    GAction* G_ACTION(void *a)
    {
        return cast(GAction*)a;
    }
}

// Function
extern (C)
__gshared
{
    
}