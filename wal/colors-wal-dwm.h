static const char norm_fg[] = "#c9dde3";
static const char norm_bg[] = "#191c23";
static const char norm_border[] = "#8c9a9e";

static const char sel_fg[] = "#c9dde3";
static const char sel_bg[] = "#6387AC";
static const char sel_border[] = "#c9dde3";

static const char urg_fg[] = "#c9dde3";
static const char urg_bg[] = "#D08770";
static const char urg_border[] = "#D08770";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
