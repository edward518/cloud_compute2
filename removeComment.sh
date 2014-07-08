#!/bin/sed -f
 
/\/\*/!b
# here we've got an /*, append lines until get the corresponding
# */
:x
/\*\//!{
N
bx
}
# delete /*...*/
s/\/\*.*\*\///

