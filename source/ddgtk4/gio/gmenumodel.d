module ddgtk4.gio.gmenumodel;

import ddgtk4.glib.gtypes;
public import ddgtk4.gio.giotypes : GMenuModel;

static immutable const(char)* G_MENU_ATTRIBUTE_ACTION = "action";
static immutable const(char)* G_MENU_ATTRIBUTE_ACTION_NAMESPACE = "action-namespace";
static immutable const(char)* G_MENU_ATTRIBUTE_TARGET = "target";
static immutable const(char)* G_MENU_ATTRIBUTE_LABEL = "label";
static immutable const(char)* G_MENU_ATTRIBUTE_ICON = "icon";
static immutable const(char)* G_MENU_LINK_SUBMENU = "submenu";
static immutable const(char)* G_MENU_LINK_SECTION = "section";

// Macros
pragma(inline, true)
{
    GMenuModel* G_MENU_MODEL(void *m)
    {
        return cast(GMenuModel*)m;
    }
}