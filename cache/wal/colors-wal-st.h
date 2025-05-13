const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0A0C1B", /* black   */
  [1] = "#8B6372", /* red     */
  [2] = "#3D5786", /* green   */
  [3] = "#5B6394", /* yellow  */
  [4] = "#9B699E", /* blue    */
  [5] = "#D6709E", /* magenta */
  [6] = "#618AAB", /* cyan    */
  [7] = "#adc7e0", /* white   */

  /* 8 bright colors */
  [8]  = "#798b9c",  /* black   */
  [9]  = "#8B6372",  /* red     */
  [10] = "#3D5786", /* green   */
  [11] = "#5B6394", /* yellow  */
  [12] = "#9B699E", /* blue    */
  [13] = "#D6709E", /* magenta */
  [14] = "#618AAB", /* cyan    */
  [15] = "#adc7e0", /* white   */

  /* special colors */
  [256] = "#0A0C1B", /* background */
  [257] = "#adc7e0", /* foreground */
  [258] = "#adc7e0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
