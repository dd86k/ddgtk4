module examples.header.main;

import ddgtk4;

extern (C)
static void
on_refresh(GAction *item, GVariant *data)
{
    g_print( "Event: on_refresh\n" );
}

extern (C)
static void
on_item1(GAction *item, GVariant *data)
{
    g_print( "Event: on_item1\n" );
}

extern (C)
static void
activate(GtkApplication *app, gpointer user_data)
{
    GtkWindow *window = GTK_WINDOW( gtk_application_window_new(app) );
    gtk_window_set_title( window, "Header Example" );
    gtk_widget_set_size_request( GTK_WIDGET(window), 500, 400 );
    
    // HeaderBar
    {
        // Create HeaderBar and set it to this window.
        GtkHeaderBar *header = GTK_HEADER_BAR( gtk_header_bar_new() );
        gtk_window_set_titlebar( window, GTK_WIDGET(header) );
        
        // Create the menu items here.
        // https://developer.gnome.org/documentation/tutorials/menus.html
        // https://developer.gnome.org/documentation/tutorials/actions.html
        GMenu *menu = g_menu_new();
        
        // Sub item 1: Create action
        GAction *action_item1 = cast(GAction*)g_simple_action_new( "item1", null );
        g_signal_connect( action_item1, "activate", G_CALLBACK(&on_item1), null );
        g_action_map_add_action( G_ACTION_MAP(window), action_item1 );
        
        // Sub-item 1: Create menu item
        GMenuItem *menuitem1 = g_menu_item_new("Item 1", "win.item1");
        g_menu_append_item( menu, menuitem1 );
        //g_menu_item_set_icon( menuitem1, defensive_icon );
        
        // Sub-item 2: Create menu item (disabled due to unassigned action)
        //             Creating the menu item with null enables the button
        g_menu_append_item( menu, g_menu_item_new("Item 2", "unassigned_action") );
        
        // Add a MenuButton at the end of our HeaderBar.
        // The popup can be provided either as a GtkPopover or an abstract GMenuModel.
        GtkMenuButton *menubutton = GTK_MENU_BUTTON( gtk_menu_button_new() );
        gtk_menu_button_set_menu_model( menubutton, G_MENU_MODEL(menu) );
        gtk_menu_button_set_icon_name( menubutton, "open-menu-symbolic" );
        //gtk_menu_button_set_direction( menu, GTK_ARROW_DOWN ); // Default is downwards
        gtk_header_bar_pack_end( header, GTK_WIDGET(menubutton) );
        
        // Add a refresh Button at the start of our HeaderBar.
        GtkButton *refreshbutton = GTK_BUTTON( gtk_button_new_from_icon_name("view-refresh-symbolic") );
        g_signal_connect( refreshbutton, "clicked", G_CALLBACK(&on_refresh), null );
        gtk_header_bar_pack_start( header, GTK_WIDGET(refreshbutton) );
    }
    
    // Paned
    {
        GtkWidget *hpanel = gtk_paned_new( GTK_ORIENTATION_HORIZONTAL );
        
        GtkWidget *frame1 = gtk_frame_new( null );
        gtk_frame_set_child( GTK_FRAME(frame1), gtk_label_new("frame1") );
        gtk_paned_set_start_child( GTK_PANED(hpanel), frame1 );
        gtk_paned_set_resize_start_child( GTK_PANED(hpanel), FALSE );
        gtk_paned_set_shrink_start_child( GTK_PANED(hpanel), FALSE );
        gtk_widget_set_size_request( frame1, 200, -1 );
        
        GtkWidget *frame2 = gtk_frame_new( null );
        gtk_frame_set_child( GTK_FRAME(frame2), gtk_label_new("frame2") );
        gtk_paned_set_end_child( GTK_PANED(hpanel), frame2 );
        gtk_paned_set_resize_end_child( GTK_PANED(hpanel), TRUE );
        gtk_paned_set_shrink_end_child( GTK_PANED(hpanel), FALSE );
        //gtk_widget_set_size_request( frame2, 100, -1 );
        
        gtk_window_set_child( window, hpanel );
    }
    
    gtk_window_present( window );
}

int main(string[] args)
{
    loadgtk4all();
    
    GtkApplication *app = gtk_application_new( "org.gtk.example", G_APPLICATION_DEFAULT_FLAGS );
    g_signal_connect( app, "activate", G_CALLBACK(&activate), null );
    scope(exit) g_object_unref( app );
    
    return g_application_run( G_APPLICATION(app), 0, null );
}