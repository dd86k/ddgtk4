module ddgtk4.glib.gtypes;

import core.stdc.config : c_long, c_ulong;

// glibconfig, but seem better fit here.
alias gint8   = byte;
alias guint8  = ubyte;
alias gint16  = short;
alias guint16 = ushort;
alias gint32  = int;
alias guint32 = uint;
alias gint64  = long;
alias guint64 = ulong;

alias gchar    = char;
alias gshort   = short;
alias glong    = c_long;
alias gint     = int;
alias gboolean = gint;

alias guchar  = ubyte;
alias gushort = ushort;
alias gulong  = c_ulong;
alias guint   = uint;

alias gfloat  = float;
alias gdouble = double;

alias gpointer = void*;
alias gconstpointer = const(void)*;

alias GCompareFunc     = gint function(gconstpointer a, gconstpointer b);
alias GCompareDataFunc = gint function(gconstpointer a, gconstpointer b, gpointer user_data);
alias GEqualFunc       = gint function(gconstpointer a, gconstpointer b);

alias GEqualFuncFull = gboolean function(gconstpointer  a,
                                         gconstpointer  b,
                                         gpointer       user_data);
alias GDestroyNotify = void function(gpointer data);
alias GFunc          = void function(gpointer data,
                            gpointer       user_data);
alias GHashFunc      = void function(gconstpointer key);
alias GHFunc         = void function(gpointer key,
                                     gpointer value,
                                     gpointer user_data);

alias GCopyFunc = gpointer function(gconstpointer src,
                                    gpointer      data);

alias GFreeFunc = void function(gpointer data);

alias GTranslateFunc = const(gchar)* function(const(gchar) *str,
                                              gpointer      data);

/* Define some mathematical constants that aren't available
 * symbolically in some strict ISO C implementations.
 *
 * Note that the large number of digits used in these definitions
 * doesn't imply that GLib or current computers in general would be
 * able to handle floating point numbers with an accuracy like this.
 * It's mostly an exercise in futility and future proofing. For
 * extended precision floating point support, look somewhere else
 * than GLib.
 */
/*
#define G_E     2.7182818284590452353602874713526624977572470937000
#define G_LN2   0.69314718055994530941723212145817656807550013436026
#define G_LN10  2.3025850929940456840179914546843642076011014886288
#define G_PI    3.1415926535897932384626433832795028841971693993751
#define G_PI_2  1.5707963267948966192313216916397514420985846996876
#define G_PI_4  0.78539816339744830961566084581987572104929234984378
#define G_SQRT2 1.4142135623730950488016887242096980785696718753769
*/

alias gint grefcount;
alias gint gatomicrefcount;  /* should be accessed only using atomics */
