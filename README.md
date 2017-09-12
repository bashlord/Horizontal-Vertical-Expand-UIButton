# Horizontal-Vertical-Expand-UIButton

DataViewControllers are initialized with two ExpandButtons, each configured with flags determining expand orientation, expand direction, number of cells, and root index of the cell.  Buttons need to be initialized with a CGRect frame in order to allow for animated directions (constraints would restrict simple translations).  DataViewController.initButtons() is where the flags are set and initialized, and origin displacement, resizing, and datasource reloading is set once called.

https://www.youtube.com/watch?v=8_H7kbTcIo4&feature=youtu.be
