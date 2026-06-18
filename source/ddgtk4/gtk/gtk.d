module ddgtk4.gtk.gtk;

import ddloader;
import ddgtk4.gtk;
import ddgtk4.glib.gtypes : guint;

// Functions
// gtkmain.h
extern (C)
{
    // gtkmain.h
    alias A_gtk_init = void function();
    // gtkversion.h.in
    alias A_gtk_get_major_version = guint function();
    alias A_gtk_get_minor_version = guint function();
    alias A_gtk_get_micro_version = guint function();
    // aka patch
    // Returns, for example, "GTK version too old (major mismatch)" on error
    alias A_gtk_check_version = const(char)* function(); // gtkversion.c
}

__gshared
{
    A_gtk_init gtk_init;
    A_gtk_get_major_version gtk_get_major_version;
    A_gtk_get_minor_version gtk_get_minor_version;
    A_gtk_get_micro_version gtk_get_micro_version;
    A_gtk_check_version gtk_check_version;
}

// TODO: Map dynamic library versions to groups of functions?
version (Windows)
{
    private immutable string[] libNamesGTK4 = [
        "libgtk-4-1.dll", // MSYS2
        "gtk-4-4.1.dll",
        "gtk-4-1.dll",
        "gtk-4.dll"
    ];
}
else version (OSX)
{
    private immutable string[] libNamesGTK4 = [
        "libgtk-4.1.dylib"
    ];
}
else
{
    private immutable string[] libNamesGTK4 = [
        "libgtk-4.so.1"
    ];
}

private __gshared DynamicLibrary libgtk;
void loadgtk4()
{
    // Let caller catch exceptions
    libgtk = libraryLoad(libNamesGTK4);
    
    // gtkmain
    libraryBind(libgtk, cast(void**)&gtk_init, "gtk_init");
    libraryBind(libgtk, cast(void**)&gtk_get_major_version, "gtk_get_major_version");
    libraryBind(libgtk, cast(void**)&gtk_get_minor_version, "gtk_get_minor_version");
    libraryBind(libgtk, cast(void**)&gtk_get_micro_version, "gtk_get_micro_version");
    libraryBind(libgtk, cast(void**)&gtk_check_version, "gtk_check_version");
    
    // GtkWidget
    libraryBind(libgtk, cast(void**)&gtk_widget_set_visible, "gtk_widget_set_visible");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_size_request, "gtk_widget_set_size_request");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_margin_top, "gtk_widget_set_margin_top");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_margin_bottom, "gtk_widget_set_margin_bottom");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_margin_start, "gtk_widget_set_margin_start");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_margin_end, "gtk_widget_set_margin_end");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_parent, "gtk_widget_set_parent");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_hexpand, "gtk_widget_set_hexpand");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_vexpand, "gtk_widget_set_vexpand");
    libraryBind(libgtk, cast(void**)&gtk_widget_get_first_child, "gtk_widget_get_first_child");
    libraryBind(libgtk, cast(void**)&gtk_widget_get_next_sibling, "gtk_widget_get_next_sibling");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_direction, "gtk_widget_set_direction");
    libraryBind(libgtk, cast(void**)&gtk_widget_get_direction, "gtk_widget_get_direction");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_default_direction, "gtk_widget_set_default_direction");
    libraryBind(libgtk, cast(void**)&gtk_widget_get_halign, "gtk_widget_get_halign");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_halign, "gtk_widget_set_halign");
    libraryBind(libgtk, cast(void**)&gtk_widget_get_valign, "gtk_widget_get_valign");
    libraryBind(libgtk, cast(void**)&gtk_widget_set_valign, "gtk_widget_set_valign");
    libraryBind(libgtk, cast(void**)&gtk_widget_add_css_class, "gtk_widget_add_css_class");
    libraryBind(libgtk, cast(void**)&gtk_widget_remove_css_class, "gtk_widget_remove_css_class");
    libraryBind(libgtk, cast(void**)&gtk_widget_grab_focus, "gtk_widget_grab_focus");
    libraryBind(libgtk, cast(void**)&gtk_widget_add_controller, "gtk_widget_add_controller");
    libraryBind(libgtk, cast(void**)&gtk_widget_remove_controller, "gtk_widget_remove_controller");
    
    // GtkApplication
    libraryBind(libgtk, cast(void**)&gtk_application_new, "gtk_application_new");
    libraryBind(libgtk, cast(void**)&gtk_application_add_window, "gtk_application_add_window");
    libraryBind(libgtk, cast(void**)&gtk_application_set_accels_for_action, "gtk_application_set_accels_for_action");
    
    // GtkApplicationWindow
    libraryBind(libgtk, cast(void**)&gtk_application_window_new, "gtk_application_window_new");
    
    // GtkWindow
    libraryBind(libgtk, cast(void**)&gtk_window_new, "gtk_window_new");
    libraryBind(libgtk, cast(void**)&gtk_window_set_modal, "gtk_window_set_modal");
    libraryBind(libgtk, cast(void**)&gtk_window_set_resizable, "gtk_window_set_resizable");
    libraryBind(libgtk, cast(void**)&gtk_window_set_transient_for, "gtk_window_set_transient_for");
    libraryBind(libgtk, cast(void**)&gtk_window_set_title, "gtk_window_set_title");
    libraryBind(libgtk, cast(void**)&gtk_window_set_default_size, "gtk_window_set_default_size");
    libraryBind(libgtk, cast(void**)&gtk_window_set_child, "gtk_window_set_child");
    libraryBind(libgtk, cast(void**)&gtk_window_present, "gtk_window_present");
    libraryBind(libgtk, cast(void**)&gtk_window_destroy, "gtk_window_destroy");
    libraryBind(libgtk, cast(void**)&gtk_window_close, "gtk_window_close");
    libraryBind(libgtk, cast(void**)&gtk_window_set_titlebar, "gtk_window_set_titlebar");
    libraryBind(libgtk, cast(void**)&gtk_window_set_icon_name, "gtk_window_set_icon_name");
    libraryBind(libgtk, cast(void**)&gtk_window_get_application, "gtk_window_get_application");
    libraryBind(libgtk, cast(void**)&gtk_window_set_decorated, "gtk_window_set_decorated");
    libraryBind(libgtk, cast(void**)&gtk_window_set_hide_on_close, "gtk_window_set_hide_on_close");
    libraryBind(libgtk, cast(void**)&gtk_window_get_toplevels, "gtk_window_get_toplevels");
    
    // GtkGrid
    libraryBind(libgtk, cast(void**)&gtk_grid_new, "gtk_grid_new");
    libraryBind(libgtk, cast(void**)&gtk_grid_insert_row, "gtk_grid_insert_row");
    libraryBind(libgtk, cast(void**)&gtk_grid_insert_column, "gtk_grid_insert_column");
    libraryBind(libgtk, cast(void**)&gtk_grid_attach, "gtk_grid_attach");
    libraryBind(libgtk, cast(void**)&gtk_grid_set_column_homogeneous, "gtk_grid_set_column_homogeneous");
    libraryBind(libgtk, cast(void**)&gtk_grid_set_row_homogeneous, "gtk_grid_set_row_homogeneous");
    libraryBind(libgtk, cast(void**)&gtk_grid_set_column_spacing, "gtk_grid_set_column_spacing");
    libraryBind(libgtk, cast(void**)&gtk_grid_set_row_spacing, "gtk_grid_set_row_spacing");
    
    // GtkButton
    libraryBind(libgtk, cast(void**)&gtk_button_new, "gtk_button_new");
    libraryBind(libgtk, cast(void**)&gtk_button_new_with_label, "gtk_button_new_with_label");
    libraryBind(libgtk, cast(void**)&gtk_button_new_from_icon_name, "gtk_button_new_from_icon_name");
    libraryBind(libgtk, cast(void**)&gtk_button_set_icon_name, "gtk_button_set_icon_name");
    libraryBind(libgtk, cast(void**)&gtk_button_set_has_frame, "gtk_button_set_has_frame");
    libraryBind(libgtk, cast(void**)&gtk_button_set_label, "gtk_button_set_label");
    libraryBind(libgtk, cast(void**)&gtk_button_set_child, "gtk_button_set_child");
    libraryBind(libgtk, cast(void**)&gtk_button_get_child, "gtk_button_get_child");

    // GtkToggleButton
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_new, "gtk_toggle_button_new");
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_new_with_label, "gtk_toggle_button_new_with_label");
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_new_with_mnemonic, "gtk_toggle_button_new_with_mnemonic");
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_set_active, "gtk_toggle_button_set_active");
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_get_active, "gtk_toggle_button_get_active");
    libraryBind(libgtk, cast(void**)&gtk_toggle_button_set_group, "gtk_toggle_button_set_group");
    
    // GtkSwitch
    libraryBind(libgtk, cast(void**)&gtk_switch_new, "gtk_switch_new");
    libraryBind(libgtk, cast(void**)&gtk_switch_set_state, "gtk_switch_set_state");
    libraryBind(libgtk, cast(void**)&gtk_switch_get_state, "gtk_switch_get_state");
    libraryBind(libgtk, cast(void**)&gtk_switch_set_active, "gtk_switch_set_active");
    libraryBind(libgtk, cast(void**)&gtk_switch_get_active, "gtk_switch_get_active");
    
    // GtkSpinner
    libraryBind(libgtk, cast(void**)&gtk_spinner_new, "gtk_spinner_new");
    libraryBind(libgtk, cast(void**)&gtk_spinner_get_spinning, "gtk_spinner_get_spinning");
    libraryBind(libgtk, cast(void**)&gtk_spinner_set_spinning, "gtk_spinner_set_spinning");
    libraryBind(libgtk, cast(void**)&gtk_spinner_start, "gtk_spinner_start");
    libraryBind(libgtk, cast(void**)&gtk_spinner_stop, "gtk_spinner_stop");
    
    // GtkProgressBar
    libraryBind(libgtk, cast(void**)&gtk_progress_bar_new, "gtk_progress_bar_new");
    libraryBind(libgtk, cast(void**)&gtk_progress_bar_set_fraction, "gtk_progress_bar_set_fraction");
    
    // GtkLevelBar
    libraryBind(libgtk, cast(void**)&gtk_level_bar_new, "gtk_level_bar_new");
    libraryBind(libgtk, cast(void**)&gtk_level_bar_set_value, "gtk_level_bar_set_value");
    
    // GtkNotebook
    libraryBind(libgtk, cast(void**)&gtk_notebook_new, "gtk_notebook_new");
    libraryBind(libgtk, cast(void**)&gtk_notebook_append_page, "gtk_notebook_append_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_prepend_page, "gtk_notebook_prepend_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_remove_page, "gtk_notebook_remove_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_set_current_page, "gtk_notebook_set_current_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_get_current_page, "gtk_notebook_get_current_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_get_n_pages, "gtk_notebook_get_n_pages");
    libraryBind(libgtk, cast(void**)&gtk_notebook_get_nth_page, "gtk_notebook_get_nth_page");
    libraryBind(libgtk, cast(void**)&gtk_notebook_page_num, "gtk_notebook_page_num");
    libraryBind(libgtk, cast(void**)&gtk_notebook_set_scrollable, "gtk_notebook_set_scrollable");
    libraryBind(libgtk, cast(void**)&gtk_notebook_get_scrollable, "gtk_notebook_get_scrollable");
    
    // GtkFrame
    libraryBind(libgtk, cast(void**)&gtk_frame_new, "gtk_frame_new");
    libraryBind(libgtk, cast(void**)&gtk_frame_set_label, "gtk_frame_set_label");
    libraryBind(libgtk, cast(void**)&gtk_frame_set_child, "gtk_frame_set_child");
    
    // GtkPaned
    libraryBind(libgtk, cast(void**)&gtk_paned_new, "gtk_paned_new");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_start_child, "gtk_paned_set_start_child");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_end_child, "gtk_paned_set_end_child");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_shrink_end_child, "gtk_paned_set_shrink_end_child");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_resize_end_child, "gtk_paned_set_resize_end_child");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_resize_start_child, "gtk_paned_set_resize_start_child");
    libraryBind(libgtk, cast(void**)&gtk_paned_set_shrink_start_child, "gtk_paned_set_shrink_start_child");
    
    // GtkScrolledWindow
    libraryBind(libgtk, cast(void**)&gtk_scrolled_window_new, "gtk_scrolled_window_new");
    libraryBind(libgtk, cast(void**)&gtk_scrolled_window_set_child, "gtk_scrolled_window_set_child");
    libraryBind(libgtk, cast(void**)&gtk_scrolled_window_set_policy, "gtk_scrolled_window_set_policy");
    libraryBind(libgtk, cast(void**)&gtk_scrolled_window_set_overlay_scrolling, "gtk_scrolled_window_set_overlay_scrolling");
    libraryBind(libgtk, cast(void**)&gtk_scrolled_window_set_placement, "gtk_scrolled_window_set_placement");
    
    // GtkBox
    libraryBind(libgtk, cast(void**)&gtk_box_new, "gtk_box_new");
    libraryBind(libgtk, cast(void**)&gtk_box_append, "gtk_box_append");
    libraryBind(libgtk, cast(void**)&gtk_box_set_homogeneous, "gtk_box_set_homogeneous");
    libraryBind(libgtk, cast(void**)&gtk_box_remove, "gtk_box_remove");
    
    // GtkLabel
    libraryBind(libgtk, cast(void**)&gtk_label_new, "gtk_label_new");
    libraryBind(libgtk, cast(void**)&gtk_label_set_text, "gtk_label_set_text");
    libraryBind(libgtk, cast(void**)&gtk_label_set_justify, "gtk_label_set_justify");
    libraryBind(libgtk, cast(void**)&gtk_label_get_justify, "gtk_label_get_justify");
    libraryBind(libgtk, cast(void**)&gtk_label_get_xalign, "gtk_label_get_xalign");
    libraryBind(libgtk, cast(void**)&gtk_label_set_xalign, "gtk_label_set_xalign");
    
    // GtkDropDown
    libraryBind(libgtk, cast(void**)&gtk_drop_down_new, "gtk_drop_down_new");
    libraryBind(libgtk, cast(void**)&gtk_drop_down_new_from_strings, "gtk_drop_down_new_from_strings");
    libraryBind(libgtk, cast(void**)&gtk_drop_down_set_enable_search, "gtk_drop_down_set_enable_search");
    libraryBind(libgtk, cast(void**)&gtk_drop_down_get_selected, "gtk_drop_down_get_selected");
    
    // GtkHeaderBar
    libraryBind(libgtk, cast(void**)&gtk_header_bar_new, "gtk_header_bar_new");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_pack_end, "gtk_header_bar_pack_end");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_pack_start, "gtk_header_bar_pack_start");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_set_title_widget, "gtk_header_bar_set_title_widget");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_get_title_widget, "gtk_header_bar_get_title_widget");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_remove, "gtk_header_bar_remove");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_get_show_title_buttons, "gtk_header_bar_get_show_title_buttons");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_set_show_title_buttons, "gtk_header_bar_set_show_title_buttons");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_set_decoration_layout, "gtk_header_bar_set_decoration_layout");
    libraryBind(libgtk, cast(void**)&gtk_header_bar_get_decoration_layout, "gtk_header_bar_get_decoration_layout");
    
    // GtkMenuButton
    libraryBind(libgtk, cast(void**)&gtk_menu_button_new, "gtk_menu_button_new");
    libraryBind(libgtk, cast(void**)&gtk_menu_button_set_direction, "gtk_menu_button_set_direction");
    libraryBind(libgtk, cast(void**)&gtk_menu_button_set_icon_name, "gtk_menu_button_set_icon_name");
    libraryBind(libgtk, cast(void**)&gtk_menu_button_set_menu_model, "gtk_menu_button_set_menu_model");
    libraryBind(libgtk, cast(void**)&gtk_menu_button_set_popover, "gtk_menu_button_set_popover");

    // GtkPopover
    libraryBind(libgtk, cast(void**)&gtk_popover_new, "gtk_popover_new");
    libraryBind(libgtk, cast(void**)&gtk_popover_set_child, "gtk_popover_set_child");
    libraryBind(libgtk, cast(void**)&gtk_popover_set_has_arrow, "gtk_popover_set_has_arrow");
    libraryBind(libgtk, cast(void**)&gtk_popover_set_position, "gtk_popover_set_position");
    libraryBind(libgtk, cast(void**)&gtk_popover_popup, "gtk_popover_popup");
    libraryBind(libgtk, cast(void**)&gtk_popover_popdown, "gtk_popover_popdown");

    // GtkPopoverMenu
    libraryBind(libgtk, cast(void**)&gtk_popover_menu_new_from_model, "gtk_popover_menu_new_from_model");
    libraryBind(libgtk, cast(void**)&gtk_popover_menu_bar_new_from_model, "gtk_popover_menu_bar_new_from_model");
    libraryBind(libgtk, cast(void**)&gtk_popover_menu_new_from_model_full, "gtk_popover_menu_new_from_model_full");
    libraryBind(libgtk, cast(void**)&gtk_popover_menu_add_child, "gtk_popover_menu_add_child");
    
    // GtkSettings
    libraryBind(libgtk, cast(void**)&gtk_widget_get_settings, "gtk_widget_get_settings");
    
    // GtkSearchEntry
    libraryBind(libgtk, cast(void**)&gtk_search_entry_new, "gtk_search_entry_new");
    libraryBind(libgtk, cast(void**)&gtk_search_entry_get_key_capture_widget, "gtk_search_entry_get_key_capture_widget");
    libraryBind(libgtk, cast(void**)&gtk_search_entry_set_key_capture_widget, "gtk_search_entry_set_key_capture_widget");
    
    // GtkEditable
    libraryBind(libgtk, cast(void**)&gtk_editable_get_text, "gtk_editable_get_text");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_text, "gtk_editable_set_text");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_chars, "gtk_editable_get_chars");
    libraryBind(libgtk, cast(void**)&gtk_editable_insert_text, "gtk_editable_insert_text");
    libraryBind(libgtk, cast(void**)&gtk_editable_delete_text, "gtk_editable_delete_text");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_selection_bounds, "gtk_editable_get_selection_bounds");
    libraryBind(libgtk, cast(void**)&gtk_editable_delete_selection, "gtk_editable_delete_selection");
    libraryBind(libgtk, cast(void**)&gtk_editable_select_region, "gtk_editable_select_region");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_position, "gtk_editable_set_position");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_position, "gtk_editable_get_position");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_editable, "gtk_editable_get_editable");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_editable, "gtk_editable_set_editable");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_alignment, "gtk_editable_get_alignment");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_alignment, "gtk_editable_set_alignment");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_width_chars, "gtk_editable_get_width_chars");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_width_chars, "gtk_editable_set_width_chars");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_max_width_chars, "gtk_editable_get_max_width_chars");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_max_width_chars, "gtk_editable_set_max_width_chars");
    libraryBind(libgtk, cast(void**)&gtk_editable_set_enable_undo, "gtk_editable_set_enable_undo");
    libraryBind(libgtk, cast(void**)&gtk_editable_get_enable_undo, "gtk_editable_get_enable_undo");
    
    // GtkListView
    libraryBind(libgtk, cast(void**)&gtk_list_view_new, "gtk_list_view_new");
    libraryBind(libgtk, cast(void**)&gtk_list_view_get_model, "gtk_list_view_get_model");
    libraryBind(libgtk, cast(void**)&gtk_list_view_set_model, "gtk_list_view_set_model");
    libraryBind(libgtk, cast(void**)&gtk_list_view_set_factory, "gtk_list_view_set_factory");
    libraryBind(libgtk, cast(void**)&gtk_list_view_get_factory, "gtk_list_view_get_factory");
    libraryBind(libgtk, cast(void**)&gtk_list_view_set_show_separators, "gtk_list_view_set_show_separators");
    libraryBind(libgtk, cast(void**)&gtk_list_view_get_show_separators, "gtk_list_view_get_show_separators");
    libraryBind(libgtk, cast(void**)&gtk_list_view_set_single_click_activate, "gtk_list_view_set_single_click_activate");
    libraryBind(libgtk, cast(void**)&gtk_list_view_get_single_click_activate, "gtk_list_view_get_single_click_activate");
    libraryBind(libgtk, cast(void**)&gtk_list_view_set_enable_rubberband, "gtk_list_view_set_enable_rubberband");
    libraryBind(libgtk, cast(void**)&gtk_list_view_get_enable_rubberband, "gtk_list_view_get_enable_rubberband");
    
    // GtkListItem
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_item, "gtk_list_item_get_item");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_position, "gtk_list_item_get_position");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_selected, "gtk_list_item_get_selected");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_selectable, "gtk_list_item_get_selectable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_selectable, "gtk_list_item_set_selectable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_activatable, "gtk_list_item_get_activatable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_activatable, "gtk_list_item_set_activatable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_focusable, "gtk_list_item_get_focusable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_focusable, "gtk_list_item_set_focusable");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_child, "gtk_list_item_set_child");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_child, "gtk_list_item_get_child");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_accessible_description, "gtk_list_item_set_accessible_description");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_accessible_description, "gtk_list_item_get_accessible_description");
    libraryBind(libgtk, cast(void**)&gtk_list_item_set_accessible_label, "gtk_list_item_set_accessible_label");
    libraryBind(libgtk, cast(void**)&gtk_list_item_get_accessible_label, "gtk_list_item_get_accessible_label");
    
    // GtkSelectionModel
    libraryBind(libgtk, cast(void**)&gtk_selection_model_is_selected, "gtk_selection_model_is_selected");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_get_selection, "gtk_selection_model_get_selection");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_get_selection_in_range, "gtk_selection_model_get_selection_in_range");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_select_item, "gtk_selection_model_select_item");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_unselect_item, "gtk_selection_model_unselect_item");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_select_range, "gtk_selection_model_select_range");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_unselect_range, "gtk_selection_model_unselect_range");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_select_all, "gtk_selection_model_select_all");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_unselect_all, "gtk_selection_model_unselect_all");
    libraryBind(libgtk, cast(void**)&gtk_selection_model_set_selection, "gtk_selection_model_set_selection");
    
    // GtkSignalListItemFactory
    libraryBind(libgtk, cast(void**)&gtk_signal_list_item_factory_new, "gtk_signal_list_item_factory_new");
    
    // GtkSingleSelection
    libraryBind(libgtk, cast(void**)&gtk_single_selection_new, "gtk_single_selection_new");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_get_model, "gtk_single_selection_get_model");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_set_model, "gtk_single_selection_set_model");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_get_selected, "gtk_single_selection_get_selected");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_set_selected, "gtk_single_selection_set_selected");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_get_selected_item, "gtk_single_selection_get_selected_item");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_get_autoselect, "gtk_single_selection_get_autoselect");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_set_autoselect, "gtk_single_selection_set_autoselect");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_get_can_unselect, "gtk_single_selection_get_can_unselect");
    libraryBind(libgtk, cast(void**)&gtk_single_selection_set_can_unselect, "gtk_single_selection_set_can_unselect");

    // GtkTreeListModel
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_new, "gtk_tree_list_model_new");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_get_model, "gtk_tree_list_model_get_model");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_get_passthrough, "gtk_tree_list_model_get_passthrough");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_set_autoexpand, "gtk_tree_list_model_set_autoexpand");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_get_autoexpand, "gtk_tree_list_model_get_autoexpand");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_get_child_row, "gtk_tree_list_model_get_child_row");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_model_get_row, "gtk_tree_list_model_get_row");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_item, "gtk_tree_list_row_get_item");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_set_expanded, "gtk_tree_list_row_set_expanded");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_expanded, "gtk_tree_list_row_get_expanded");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_is_expandable, "gtk_tree_list_row_is_expandable");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_position, "gtk_tree_list_row_get_position");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_depth, "gtk_tree_list_row_get_depth");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_children, "gtk_tree_list_row_get_children");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_parent, "gtk_tree_list_row_get_parent");
    libraryBind(libgtk, cast(void**)&gtk_tree_list_row_get_child_row, "gtk_tree_list_row_get_child_row");

    // GtkTextIter
    libraryBind(libgtk, cast(void**)&gtk_text_iter_get_buffer, "gtk_text_iter_get_buffer");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_get_offset, "gtk_text_iter_get_offset");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_get_line, "gtk_text_iter_get_line");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_get_line_offset, "gtk_text_iter_get_line_offset");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_is_start, "gtk_text_iter_is_start");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_is_end, "gtk_text_iter_is_end");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_forward_char, "gtk_text_iter_forward_char");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_backward_char, "gtk_text_iter_backward_char");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_forward_chars, "gtk_text_iter_forward_chars");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_backward_chars, "gtk_text_iter_backward_chars");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_equal, "gtk_text_iter_equal");
    libraryBind(libgtk, cast(void**)&gtk_text_iter_compare, "gtk_text_iter_compare");

    // GtkTextBuffer
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_new, "gtk_text_buffer_new");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_char_count, "gtk_text_buffer_get_char_count");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_line_count, "gtk_text_buffer_get_line_count");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_set_text, "gtk_text_buffer_set_text");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_insert, "gtk_text_buffer_insert");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_insert_at_cursor, "gtk_text_buffer_insert_at_cursor");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_text, "gtk_text_buffer_get_text");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_slice, "gtk_text_buffer_get_slice");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_start_iter, "gtk_text_buffer_get_start_iter");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_end_iter, "gtk_text_buffer_get_end_iter");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_bounds, "gtk_text_buffer_get_bounds");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_modified, "gtk_text_buffer_get_modified");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_set_modified, "gtk_text_buffer_set_modified");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_delete, "gtk_text_buffer_delete");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_get_iter_at_line, "gtk_text_buffer_get_iter_at_line");
    libraryBind(libgtk, cast(void**)&gtk_text_buffer_place_cursor, "gtk_text_buffer_place_cursor");

    // GtkTextView
    libraryBind(libgtk, cast(void**)&gtk_text_view_new, "gtk_text_view_new");
    libraryBind(libgtk, cast(void**)&gtk_text_view_new_with_buffer, "gtk_text_view_new_with_buffer");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_buffer, "gtk_text_view_set_buffer");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_buffer, "gtk_text_view_get_buffer");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_editable, "gtk_text_view_set_editable");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_editable, "gtk_text_view_get_editable");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_wrap_mode, "gtk_text_view_set_wrap_mode");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_wrap_mode, "gtk_text_view_get_wrap_mode");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_monospace, "gtk_text_view_set_monospace");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_monospace, "gtk_text_view_get_monospace");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_cursor_visible, "gtk_text_view_set_cursor_visible");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_cursor_visible, "gtk_text_view_get_cursor_visible");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_justification, "gtk_text_view_set_justification");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_justification, "gtk_text_view_get_justification");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_left_margin, "gtk_text_view_set_left_margin");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_right_margin, "gtk_text_view_set_right_margin");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_top_margin, "gtk_text_view_set_top_margin");
    libraryBind(libgtk, cast(void**)&gtk_text_view_set_bottom_margin, "gtk_text_view_set_bottom_margin");
    libraryBind(libgtk, cast(void**)&gtk_text_view_scroll_to_iter, "gtk_text_view_scroll_to_iter");
    libraryBind(libgtk, cast(void**)&gtk_text_view_get_iter_location, "gtk_text_view_get_iter_location");
    libraryBind(libgtk, cast(void**)&gtk_text_view_buffer_to_window_coords, "gtk_text_view_buffer_to_window_coords");

    // GtkSnapshot
    libraryBind(libgtk, cast(void**)&gtk_snapshot_append_color, "gtk_snapshot_append_color");

    // AboutDialog
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_new, "gtk_about_dialog_new");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_comments, "gtk_about_dialog_set_comments");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_version, "gtk_about_dialog_set_version");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_website, "gtk_about_dialog_set_website");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_website_label, "gtk_about_dialog_set_website_label");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_copyright, "gtk_about_dialog_set_copyright");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_license, "gtk_about_dialog_set_license");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_authors, "gtk_about_dialog_set_authors");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_documenters, "gtk_about_dialog_set_documenters");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_artists, "gtk_about_dialog_set_artists");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_license_type, "gtk_about_dialog_set_license_type");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_program_name, "gtk_about_dialog_set_program_name");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_translator_credits, "gtk_about_dialog_set_translator_credits");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_system_information, "gtk_about_dialog_set_system_information");
    libraryBind(libgtk, cast(void**)&gtk_about_dialog_set_wrap_license, "gtk_about_dialog_set_wrap_license");
    libraryBind(libgtk, cast(void**)&gtk_show_about_dialog, "gtk_show_about_dialog");

    // GtkFileDialog (4.10+)
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_new, "gtk_file_dialog_new");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_title, "gtk_file_dialog_get_title");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_title, "gtk_file_dialog_set_title");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_modal, "gtk_file_dialog_get_modal");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_modal, "gtk_file_dialog_set_modal");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_filters, "gtk_file_dialog_get_filters");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_filters, "gtk_file_dialog_set_filters");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_default_filter, "gtk_file_dialog_get_default_filter");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_default_filter, "gtk_file_dialog_set_default_filter");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_initial_folder, "gtk_file_dialog_get_initial_folder");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_initial_folder, "gtk_file_dialog_set_initial_folder");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_initial_name, "gtk_file_dialog_get_initial_name");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_initial_name, "gtk_file_dialog_set_initial_name");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_initial_file, "gtk_file_dialog_get_initial_file");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_initial_file, "gtk_file_dialog_set_initial_file");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_get_accept_label, "gtk_file_dialog_get_accept_label");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_set_accept_label, "gtk_file_dialog_set_accept_label");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_open, "gtk_file_dialog_open");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_open_finish, "gtk_file_dialog_open_finish");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_select_folder, "gtk_file_dialog_select_folder");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_select_folder_finish, "gtk_file_dialog_select_folder_finish");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_save, "gtk_file_dialog_save");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_save_finish, "gtk_file_dialog_save_finish");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_open_multiple, "gtk_file_dialog_open_multiple");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_open_multiple_finish, "gtk_file_dialog_open_multiple_finish");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_select_multiple_folders, "gtk_file_dialog_select_multiple_folders");
    libraryBind(libgtk, cast(void**)&gtk_file_dialog_select_multiple_folders_finish, "gtk_file_dialog_select_multiple_folders_finish");

    // GtkEventController
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_widget, "gtk_event_controller_get_widget");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_reset, "gtk_event_controller_reset");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_propagation_phase, "gtk_event_controller_get_propagation_phase");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_set_propagation_phase, "gtk_event_controller_set_propagation_phase");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_propagation_limit, "gtk_event_controller_get_propagation_limit");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_set_propagation_limit, "gtk_event_controller_set_propagation_limit");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_name, "gtk_event_controller_get_name");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_set_name, "gtk_event_controller_set_name");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_set_static_name, "gtk_event_controller_set_static_name");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_current_event, "gtk_event_controller_get_current_event");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_current_event_time, "gtk_event_controller_get_current_event_time");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_current_event_device, "gtk_event_controller_get_current_event_device");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_get_current_event_state, "gtk_event_controller_get_current_event_state");

    // GtkGesture
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_device, "gtk_gesture_get_device");
    libraryBind(libgtk, cast(void**)&gtk_gesture_set_state, "gtk_gesture_set_state");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_sequence_state, "gtk_gesture_get_sequence_state");
    libraryBind(libgtk, cast(void**)&gtk_gesture_set_sequence_state, "gtk_gesture_set_sequence_state");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_sequences, "gtk_gesture_get_sequences");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_last_updated_sequence, "gtk_gesture_get_last_updated_sequence");
    libraryBind(libgtk, cast(void**)&gtk_gesture_handles_sequence, "gtk_gesture_handles_sequence");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_last_event, "gtk_gesture_get_last_event");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_point, "gtk_gesture_get_point");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_bounding_box, "gtk_gesture_get_bounding_box");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_bounding_box_center, "gtk_gesture_get_bounding_box_center");
    libraryBind(libgtk, cast(void**)&gtk_gesture_is_active, "gtk_gesture_is_active");
    libraryBind(libgtk, cast(void**)&gtk_gesture_is_recognized, "gtk_gesture_is_recognized");
    libraryBind(libgtk, cast(void**)&gtk_gesture_group, "gtk_gesture_group");
    libraryBind(libgtk, cast(void**)&gtk_gesture_ungroup, "gtk_gesture_ungroup");
    libraryBind(libgtk, cast(void**)&gtk_gesture_get_group, "gtk_gesture_get_group");
    libraryBind(libgtk, cast(void**)&gtk_gesture_is_grouped_with, "gtk_gesture_is_grouped_with");

    // GtkGestureSingle
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_get_touch_only, "gtk_gesture_single_get_touch_only");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_set_touch_only, "gtk_gesture_single_set_touch_only");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_get_exclusive, "gtk_gesture_single_get_exclusive");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_set_exclusive, "gtk_gesture_single_set_exclusive");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_get_button, "gtk_gesture_single_get_button");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_set_button, "gtk_gesture_single_set_button");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_get_current_button, "gtk_gesture_single_get_current_button");
    libraryBind(libgtk, cast(void**)&gtk_gesture_single_get_current_sequence, "gtk_gesture_single_get_current_sequence");

    // GtkGestureClick
    libraryBind(libgtk, cast(void**)&gtk_gesture_click_new, "gtk_gesture_click_new");
    libraryBind(libgtk, cast(void**)&gtk_event_controller_key_new, "gtk_event_controller_key_new");
}