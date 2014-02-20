# dos-timestamp

Current timestamp for use in DOS batch files

The easiest way to get the current date and time is with %DATE% and
%TIME%, but using the result in a filename is fragile.  The colons in
%TIME% would have to be removed, AM and PM will mess up sorting, and
both can accidentally change format if the locale information is
updated.

Using this timestamp alleviates all those issues!

## Example

    :: What's a good timestamp?
    for /f %%x in ('@timestamp') do set TIMESTAMP=%%x
    
    :: Move all processed files into archive
    for /r %%x in (.\processed\*) do move "%%~x" ".\archived\%%~nx-%TIMESTAMP%%%~xx"

### Explanation

    for /f %%x in ('@timestamp') do set TIMESTAMP=%%x

The above line sets the environment variable TIMESTAMP to the result
from running the timestamp executable.
