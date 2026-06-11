module ddgtk4.gtk.gtkfiledialog;

public import ddgtk4.glib.gtypes : gboolean, gpointer;
public import ddgtk4.glib.gerror : GError;
public import ddgtk4.gobject.gobject : GObject;
public import ddgtk4.gio.giotypes :
    GAsyncResult, GAsyncReadyCallback, GCancellable, GFile;
public import ddgtk4.gio.glistmodel : GListModel;
public import ddgtk4.gtk.gtkwindow : GtkWindow;

struct GtkFileDialog;
struct GtkFileFilter;

// Macros
pragma(inline, true)
{
    GtkFileDialog* GTK_FILE_DIALOG(void *o)
    {
        return cast(GtkFileDialog*)o;
    }
}

// Functions
extern (C)
__gshared
{
    pragma(mangle, "ddgtk4_gtk_file_dialog_new")
    GtkFileDialog* function() gtk_file_dialog_new;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_title")
    const(char)* function(GtkFileDialog*) gtk_file_dialog_get_title;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_title")
    void function(GtkFileDialog*, const(char)*) gtk_file_dialog_set_title;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_modal")
    gboolean function(GtkFileDialog*) gtk_file_dialog_get_modal;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_modal")
    void function(GtkFileDialog*, gboolean) gtk_file_dialog_set_modal;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_filters")
    GListModel* function(GtkFileDialog*) gtk_file_dialog_get_filters;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_filters")
    void function(GtkFileDialog*, GListModel*) gtk_file_dialog_set_filters;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_default_filter")
    GtkFileFilter* function(GtkFileDialog*) gtk_file_dialog_get_default_filter;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_default_filter")
    void function(GtkFileDialog*, GtkFileFilter*) gtk_file_dialog_set_default_filter;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_initial_folder")
    GFile* function(GtkFileDialog*) gtk_file_dialog_get_initial_folder;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_initial_folder")
    void function(GtkFileDialog*, GFile*) gtk_file_dialog_set_initial_folder;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_initial_name")
    const(char)* function(GtkFileDialog*) gtk_file_dialog_get_initial_name;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_initial_name")
    void function(GtkFileDialog*, const(char)*) gtk_file_dialog_set_initial_name;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_initial_file")
    GFile* function(GtkFileDialog*) gtk_file_dialog_get_initial_file;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_initial_file")
    void function(GtkFileDialog*, GFile*) gtk_file_dialog_set_initial_file;
    pragma(mangle, "ddgtk4_gtk_file_dialog_get_accept_label")
    const(char)* function(GtkFileDialog*) gtk_file_dialog_get_accept_label;
    pragma(mangle, "ddgtk4_gtk_file_dialog_set_accept_label")
    void function(GtkFileDialog*, const(char)*) gtk_file_dialog_set_accept_label;

    pragma(mangle, "ddgtk4_gtk_file_dialog_open")
    void function(GtkFileDialog*, GtkWindow*, GCancellable*,
                  GAsyncReadyCallback, gpointer) gtk_file_dialog_open;
    pragma(mangle, "ddgtk4_gtk_file_dialog_open_finish")
    GFile* function(GtkFileDialog*, GAsyncResult*, GError**)
        gtk_file_dialog_open_finish;

    pragma(mangle, "ddgtk4_gtk_file_dialog_select_folder")
    void function(GtkFileDialog*, GtkWindow*, GCancellable*,
                  GAsyncReadyCallback, gpointer) gtk_file_dialog_select_folder;
    pragma(mangle, "ddgtk4_gtk_file_dialog_select_folder_finish")
    GFile* function(GtkFileDialog*, GAsyncResult*, GError**)
        gtk_file_dialog_select_folder_finish;

    pragma(mangle, "ddgtk4_gtk_file_dialog_save")
    void function(GtkFileDialog*, GtkWindow*, GCancellable*,
                  GAsyncReadyCallback, gpointer) gtk_file_dialog_save;
    pragma(mangle, "ddgtk4_gtk_file_dialog_save_finish")
    GFile* function(GtkFileDialog*, GAsyncResult*, GError**)
        gtk_file_dialog_save_finish;

    pragma(mangle, "ddgtk4_gtk_file_dialog_open_multiple")
    void function(GtkFileDialog*, GtkWindow*, GCancellable*,
                  GAsyncReadyCallback, gpointer) gtk_file_dialog_open_multiple;
    pragma(mangle, "ddgtk4_gtk_file_dialog_open_multiple_finish")
    GListModel* function(GtkFileDialog*, GAsyncResult*, GError**)
        gtk_file_dialog_open_multiple_finish;

    pragma(mangle, "ddgtk4_gtk_file_dialog_select_multiple_folders")
    void function(GtkFileDialog*, GtkWindow*, GCancellable*,
                  GAsyncReadyCallback, gpointer) gtk_file_dialog_select_multiple_folders;
    pragma(mangle, "ddgtk4_gtk_file_dialog_select_multiple_folders_finish")
    GListModel* function(GtkFileDialog*, GAsyncResult*, GError**)
        gtk_file_dialog_select_multiple_folders_finish;
}
