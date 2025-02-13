module examples.form.main;

// https://docs.gtk.org/gtk4/visual_index.html

import ddgtk4;

extern (C)
static void
btnPrintHi_clicked(GtkButton *btn, GtkWindow *parent)
{
    g_print( "Hi\n" );
}

extern (C)
static void
btnDialogAbout_clicked(GtkButton *btn, GtkWindow *parent)
{
    g_print( "btnDialogAbout_clicked\n" );
    gtk_show_about_dialog( GTK_WIDGET(parent),
                           "program-name".ptr, "ExampleCode".ptr,
                           //"logo".ptr, example_logo,
                           "title".ptr, "About ExampleCode".ptr,
                           "license".ptr, "Custom license text".ptr,
                           "version".ptr, "1.0.0".ptr,
                           "comments".ptr, "About this project".ptr,
                           "website".ptr, "https://github.com/dd86k/ddgtk4".ptr,
                           "website_label".ptr, "GitHub (source)".ptr,
                           null );
}

extern (C)
static void
btnDialogAbout2_clicked(GtkButton *btn, GtkWindow *parent)
{
    g_print( "btnDialogAbout2_clicked\n" );
    
    static immutable const(char)** authors     = [ "dd86k", "GTK Team", "Author 1", null ];
    static immutable const(char)** documenters = [ "dd86k", "Documenter 1", null ];
    static immutable const(char)** artists     = [ "John Smith", "Contoso Inc.", "Artist 1", null ];
    
    GtkAboutDialog *about = GTK_ABOUT_DIALOG( gtk_about_dialog_new() );
    gtk_about_dialog_set_program_name( about, "Example Form" ); // otherwise it is program name
    gtk_about_dialog_set_version( about, "1.0.0" );
    gtk_about_dialog_set_website( about, "https://github.com/dd86k/ddgtk4" );
    gtk_about_dialog_set_website_label( about, "GitHub (source)" ); // otherwise it's just "Website"
    gtk_about_dialog_set_comments( about, "About this project" );
    gtk_about_dialog_set_copyright( about, "Copyright (c) 2025 Example" );
    gtk_about_dialog_set_license( about, "Custom license text" );
    // Or use gtk_about_dialog_set_license_type( about, GTK_LICENSE_CUSTOM );
    gtk_about_dialog_set_authors( about, cast(const(char)**)authors );
    gtk_about_dialog_set_documenters( about, cast(const(char)**)documenters );
    gtk_about_dialog_set_artists( about, cast(const(char)**)artists );
    gtk_about_dialog_set_translator_credits( about, "Translator 1" );
    gtk_about_dialog_set_system_information( about, "System information text" );
    
    // Allow only one instance, attach to parent, and show
    gtk_window_set_transient_for( GTK_WINDOW(about), parent );
    gtk_window_set_modal( GTK_WINDOW(about), TRUE );
    gtk_window_present( GTK_WINDOW(about) );
}

extern (C)
static void
btnDialogAlert_clicked(GtkButton *btn, GtkWindow *parent)
{
    g_print( "btnDialogAlert_clicked\n" );
}

extern (C)
static void
activate(GtkApplication *app, gpointer user_data)
{
    enum MARGING = 15;
    
    GtkWidget *window = gtk_application_window_new( app );
    
    // Set window title
    gtk_window_set_title( GTK_WINDOW(window), "Form Example" );
    
    // Set minimum window (widget) size, which in turn also resizes the window
    gtk_widget_set_size_request( window, 400, 300 );
    
    // Create a GtkNotebook and sets it as the only child of the window
    GtkWidget *notebook = gtk_notebook_new();
    gtk_window_set_child( GTK_WINDOW(window), GTK_WIDGET(notebook) );
    
    // NOTE: To reduce logic errors (e.g., adding the wrong control in a container),
    //       scopes are introduced to delimit controls to the visibility of their own container.
    
    // Create a Grid container, some controls, and add it to our notebook
    {
        GtkWidget *box = gtk_box_new( GTK_ORIENTATION_VERTICAL, 5 );
        gtk_widget_set_margin_top( GTK_WIDGET(box), MARGING );
        gtk_widget_set_margin_bottom( GTK_WIDGET(box), MARGING );
        gtk_widget_set_margin_start( GTK_WIDGET(box), MARGING );
        gtk_widget_set_margin_end( GTK_WIDGET(box), MARGING );
        
        GtkWidget *btnDialogAbout = gtk_button_new_with_label( "Launch simple AboutDialog" );
        g_signal_connect( btnDialogAbout, "clicked", G_CALLBACK(&btnDialogAbout_clicked), null );
        gtk_box_append( GTK_BOX(box), btnDialogAbout ); // Add to our box
        
        GtkWidget *btnDialogAbout2 = gtk_button_new_with_label( "Launch detailed AboutDialog" );
        g_signal_connect( btnDialogAbout2, "clicked", G_CALLBACK(&btnDialogAbout2_clicked), null );
        gtk_box_append( GTK_BOX(box), btnDialogAbout2 ); // Add to our box
        
        // Add box to notebook
        gtk_notebook_append_page( GTK_NOTEBOOK(notebook), box, gtk_label_new("Dialogs (Box)") );
    }
    
    // Create a Frame container and add it to our notebook
    {
        GtkFrame *frame = GTK_FRAME( gtk_frame_new("Frame name") );
        
        GtkWidget *btnPrintHi = gtk_button_new_with_label( `Print "Hi"` );
        g_signal_connect( btnPrintHi, "clicked", G_CALLBACK(&btnPrintHi_clicked), null );
        gtk_frame_set_child( frame, btnPrintHi );
        
        gtk_notebook_append_page( GTK_NOTEBOOK(notebook), GTK_WIDGET(frame), gtk_label_new("Frame") );
    }
    
    // Create a a Grid container and add it to our notebook
    {
        // New grid with equal column size across the container
        GtkGrid *grid = GTK_GRID( gtk_grid_new() );
        gtk_grid_set_column_homogeneous( grid, TRUE );
        
        // Set margin for container on all sides
        gtk_widget_set_margin_top( GTK_WIDGET(grid), MARGING );
        gtk_widget_set_margin_bottom( GTK_WIDGET(grid), MARGING );
        gtk_widget_set_margin_start( GTK_WIDGET(grid), MARGING );
        gtk_widget_set_margin_end( GTK_WIDGET(grid), MARGING );
        
        // Set margin in-between items
        gtk_grid_set_column_spacing( grid, MARGING );
        gtk_grid_set_row_spacing( grid, MARGING );
        
        // Add spinner at row 0
        GtkSpinner *spinner = GTK_SPINNER( gtk_spinner_new() );
        gtk_spinner_start( spinner );
        gtk_grid_attach( grid, gtk_label_new("Spinner"), 0, 0, 1, 1 );
        gtk_grid_attach( grid, GTK_WIDGET(spinner),      1, 0, 1, 1 );
        
        // Add ProgressBar at row 1
        GtkProgressBar *progbar = GTK_PROGRESS_BAR( gtk_progress_bar_new() );
        gtk_progress_bar_set_fraction( progbar, 0.5 );
        gtk_grid_attach( grid, gtk_label_new("ProgressBar"), 0, 1, 1, 1 );
        gtk_grid_attach( grid, GTK_WIDGET(progbar),          1, 1, 1, 1 );
        
        // Add a LevelBar at row 2
        GtkLevelBar *levelbar = GTK_LEVEL_BAR( gtk_level_bar_new() ); // defaults to min:0.0 max:1.0
        gtk_level_bar_set_value( levelbar, 0.5 );
        gtk_grid_attach( grid, gtk_label_new("LevelBar"), 0, 2, 1, 1 );
        gtk_grid_attach( grid, GTK_WIDGET(levelbar),      1, 2, 1, 1 );
        
        // Add two ToggleButtons as a group at row 3
        GtkWidget *togglebox = gtk_box_new(GTK_ORIENTATION_HORIZONTAL, 0);
        gtk_box_set_homogeneous( GTK_BOX(togglebox), TRUE ); // both buttons will take full width of box
        GtkWidget *toggle1 = gtk_toggle_button_new_with_label("Button1");
        GtkWidget *toggle2 = gtk_toggle_button_new_with_label("Button2");
        gtk_toggle_button_set_active( GTK_TOGGLE_BUTTON(toggle1), TRUE );
        gtk_toggle_button_set_group( GTK_TOGGLE_BUTTON(toggle1), GTK_TOGGLE_BUTTON(toggle2) );
        gtk_box_append( GTK_BOX(togglebox), toggle1 );
        gtk_box_append( GTK_BOX(togglebox), toggle2 );
        gtk_grid_attach( grid, gtk_label_new("ToggleButton"), 0, 3, 1, 1 );
        gtk_grid_attach( grid, togglebox,                     1, 3, 1, 1 );
        
        // Add a Switch at row 4
        GtkWidget *switch_ = gtk_switch_new();
        gtk_grid_attach( grid, gtk_label_new("Switch"), 0, 4, 1, 1 );
        gtk_grid_attach( grid, switch_,                 1, 4, 1, 1 );
        
        // Add a DropDown
        static immutable const(char)** items = [
            "Choice 1",
            "Choice 2",
            "Choice 3",
            null
        ];
        GtkWidget *dropdown = gtk_drop_down_new_from_strings(cast(const(char)**)items);
        gtk_grid_attach( grid, gtk_label_new("DropDown"), 0, 5, 1, 1 );
        gtk_grid_attach( grid, dropdown,                  1, 5, 1, 1 );
        
        gtk_notebook_append_page( GTK_NOTEBOOK(notebook), GTK_WIDGET(grid), gtk_label_new("Controls (Grid)") );
    }
    
    gtk_window_present( GTK_WINDOW(window) );
}

int main(string[] args)
{
    initddgtk4();
    
    GtkApplication *app = gtk_application_new( "org.gtk.example", G_APPLICATION_DEFAULT_FLAGS );
    g_signal_connect( app, "activate", G_CALLBACK(&activate), null );
    scope(exit) g_object_unref( app );
    
    return g_application_run( G_APPLICATION(app), 0, null );
}