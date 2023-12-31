const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#191c23", /* black   */
  [1] = "#D08770", /* red     */
  [2] = "#6387AC", /* green   */
  [3] = "#76B5C9", /* yellow  */
  [4] = "#83A9C5", /* blue    */
  [5] = "#9BADC3", /* magenta */
  [6] = "#89C1D1", /* cyan    */
  [7] = "#c9dde3", /* white   */

  /* 8 bright colors */
  [8]  = "#8c9a9e",  /* black   */
  [9]  = "#D08770",  /* red     */
  [10] = "#6387AC", /* green   */
  [11] = "#76B5C9", /* yellow  */
  [12] = "#83A9C5", /* blue    */
  [13] = "#9BADC3", /* magenta */
  [14] = "#89C1D1", /* cyan    */
  [15] = "#c9dde3", /* white   */

  /* special colors */
  [256] = "#191c23", /* background */
  [257] = "#c9dde3", /* foreground */
  [258] = "#c9dde3",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
