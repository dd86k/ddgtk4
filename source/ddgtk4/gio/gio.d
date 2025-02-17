module ddgtk4.gio.gio;

import ddloader;
import ddgtk4.gio;

version (Windows)
{
    private immutable string[] libNamesGio = [
        "libgio-2.0-0.dll", // MSYS2
        "gio-2.0-0.dll",
        "gio-2.dll"
    ];
}
else version (OSX)
{
    private immutable string[] libNamesGio = [
        "libgio-2.0.0.dylib"
    ];
}
else
{
    private immutable string[] libNamesGio = [
        "libgio-2.0.so.0"
    ];
}

private __gshared DynamicLibrary libgio;
void loadgio()
{
    // Let caller catch exceptions
    libgio = libraryLoad(libNamesGio);
    
    // GApplication
    libraryBind(libgio, cast(void**)&g_application_run, "g_application_run");
    
    // GSimpleAction
    libraryBind(libgio, cast(void**)&g_simple_action_new, "g_simple_action_new");
    
    // GActionMap
    libraryBind(libgio, cast(void**)&g_action_map_add_action, "g_action_map_add_action");
    
    // GListModel
    libraryBind(libgio, cast(void**)&g_list_model_get_n_items, "g_list_model_get_n_items");
    
    // GMenu
    libraryBind(libgio, cast(void**)&g_menu_new, "g_menu_new");
    libraryBind(libgio, cast(void**)&g_menu_insert_item, "g_menu_insert_item");
    libraryBind(libgio, cast(void**)&g_menu_append_item, "g_menu_append_item");
    libraryBind(libgio, cast(void**)&g_menu_item_new, "g_menu_item_new");
    libraryBind(libgio, cast(void**)&g_menu_item_new_submenu, "g_menu_item_new_submenu");
    libraryBind(libgio, cast(void**)&g_menu_item_set_icon, "g_menu_item_set_icon");
}
