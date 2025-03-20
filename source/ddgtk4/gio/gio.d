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
    
    // GAppInfo
    libraryBind(libgio, cast(void**)&g_app_info_launch, "g_app_info_launch");
    
    // GSimpleAction
    libraryBind(libgio, cast(void**)&g_simple_action_new, "g_simple_action_new");
    
    // GActionMap
    libraryBind(libgio, cast(void**)&g_action_map_add_action, "g_action_map_add_action");
    
    // GListModel
    libraryBind(libgio, cast(void**)&g_list_model_get_item_type, "g_list_model_get_item_type");
    libraryBind(libgio, cast(void**)&g_list_model_get_n_items, "g_list_model_get_n_items");
    libraryBind(libgio, cast(void**)&g_list_model_get_item, "g_list_model_get_item");
    libraryBind(libgio, cast(void**)&g_list_model_get_object, "g_list_model_get_object");
    libraryBind(libgio, cast(void**)&g_list_model_items_changed, "g_list_model_items_changed");
    
    // GSettings
    libraryBind(libgio, cast(void**)&g_settings_set_value, "g_settings_set_value");
    libraryBind(libgio, cast(void**)&g_settings_set, "g_settings_set");
    libraryBind(libgio, cast(void**)&g_settings_set_boolean, "g_settings_set_boolean");
    
    // GListStore
    libraryBind(libgio, cast(void**)&g_list_store_new, "g_list_store_new");
    libraryBind(libgio, cast(void**)&g_list_store_insert, "g_list_store_insert");
    libraryBind(libgio, cast(void**)&g_list_store_insert_sorted, "g_list_store_insert_sorted");
    libraryBind(libgio, cast(void**)&g_list_store_sort, "g_list_store_sort");
    libraryBind(libgio, cast(void**)&g_list_store_append, "g_list_store_append");
    libraryBind(libgio, cast(void**)&g_list_store_remove, "g_list_store_remove");
    libraryBind(libgio, cast(void**)&g_list_store_remove_all, "g_list_store_remove_all");
    libraryBind(libgio, cast(void**)&g_list_store_splice, "g_list_store_splice");
    libraryBind(libgio, cast(void**)&g_list_store_find, "g_list_store_find");
    libraryBind(libgio, cast(void**)&g_list_store_find_with_equal_func, "g_list_store_find_with_equal_func");
    libraryBind(libgio, cast(void**)&g_list_store_find_with_equal_func_full, "g_list_store_find_with_equal_func_full");
    
    // GMenu
    libraryBind(libgio, cast(void**)&g_menu_new, "g_menu_new");
    libraryBind(libgio, cast(void**)&g_menu_insert_item, "g_menu_insert_item");
    libraryBind(libgio, cast(void**)&g_menu_append_item, "g_menu_append_item");
    libraryBind(libgio, cast(void**)&g_menu_item_new, "g_menu_item_new");
    libraryBind(libgio, cast(void**)&g_menu_item_new_submenu, "g_menu_item_new_submenu");
    libraryBind(libgio, cast(void**)&g_menu_item_set_icon, "g_menu_item_set_icon");
}
