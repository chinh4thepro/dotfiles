static const char norm_fg[] = "#adc7e0";
static const char norm_bg[] = "#0A0C1B";
static const char norm_border[] = "#798b9c";

static const char sel_fg[] = "#adc7e0";
static const char sel_bg[] = "#3D5786";
static const char sel_border[] = "#adc7e0";

static const char urg_fg[] = "#adc7e0";
static const char urg_bg[] = "#8B6372";
static const char urg_border[] = "#8B6372";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
