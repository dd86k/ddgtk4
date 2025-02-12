module ddgtk4.gtk.gtkaboutdialog;

import ddgtk4.gtk.gtkwidget : GtkWidget;
import ddgtk4.glib.gtypes : gboolean;

alias GtkLicense = int;
enum : GtkLicense
{
    GTK_LICENSE_UNKNOWN,
    GTK_LICENSE_CUSTOM,

    GTK_LICENSE_GPL_2_0,
    GTK_LICENSE_GPL_3_0,

    GTK_LICENSE_LGPL_2_1,
    GTK_LICENSE_LGPL_3_0,

    GTK_LICENSE_BSD,
    GTK_LICENSE_MIT_X11,

    GTK_LICENSE_ARTISTIC,

    GTK_LICENSE_GPL_2_0_ONLY,
    GTK_LICENSE_GPL_3_0_ONLY,
    GTK_LICENSE_LGPL_2_1_ONLY,
    GTK_LICENSE_LGPL_3_0_ONLY,

    GTK_LICENSE_AGPL_3_0,
    GTK_LICENSE_AGPL_3_0_ONLY,

    GTK_LICENSE_BSD_3,
    GTK_LICENSE_APACHE_2_0,
    GTK_LICENSE_MPL_2_0,
    GTK_LICENSE_0BSD
}

struct GtkAboutDialog;

// Macros
pragma(inline, true)
{
    GtkAboutDialog* GTK_ABOUT_DIALOG(void *o)
    {
        return cast(GtkAboutDialog*)o;
    }
}

// Functions
extern (C)
__gshared
{
    GtkWidget* function() gtk_about_dialog_new;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_comments;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_version;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_website;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_website_label;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_copyright;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_license;
    void function(GtkAboutDialog*, const(char)**) gtk_about_dialog_set_authors;
    void function(GtkAboutDialog*, const(char)**) gtk_about_dialog_set_documenters;
    void function(GtkAboutDialog*, const(char)**) gtk_about_dialog_set_artists;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_translator_credits;
    void function(GtkAboutDialog*, GtkLicense)   gtk_about_dialog_set_license_type;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_program_name;
    void function(GtkAboutDialog*, const(char)*) gtk_about_dialog_set_system_information;
    
    void function(GtkAboutDialog*, gboolean)     gtk_about_dialog_set_wrap_license;
    
    // Convenience function
    void function(GtkWidget *parent, const(char) *first, ...) gtk_show_about_dialog;
}