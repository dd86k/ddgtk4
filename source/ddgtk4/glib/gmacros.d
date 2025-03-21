module ddgtk4.glib.gmacros;

enum FALSE = 0;         // #define	FALSE	(0)
enum TRUE  = !FALSE;    // #define	TRUE	(!FALSE)

// glib/glib-init.c and glib/glibconfig.h.in have interesting macros
alias guintptr = size_t;
alias gintptr  = size_t;
alias gsize    = size_t;