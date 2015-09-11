::#!
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: {{{1 :::::::^::::
:: Copyright © 2013 Martin Krischik
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: $Author$
:: $Revision$
:: $Date$
:: $Id$
:: $HeadURL$
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: }}}1 :::::::::::
@ECHO OFF

SETLOCAL
    SET PATH=%PATH%;C:\opt\Git\1.9.4\bin
    SET PATH=%PATH%;C:\opt\Scala\2.11.5\bin

    CALL scala -save %~f0 %*    
ENDLOCAL
    
GOTO :eof
::!#

import scala.sys.process._

("git" :: "fetch" :: "--tags" :: "https://github.com/embarkmobile/zxing-android-minimal.git" :: Nil).!
("git" :: "pull"  ::		 "https://github.com/embarkmobile/zxing-android-minimal.git" :: "v3.0.3" :: Nil).!
("git" :: "pull"  :: "origin" :: "dev" :: Nil).!

// vim: set wrap tabstop=8 shiftwidth=4 softtabstop=4 noexpandtab :
// vim: set textwidth=0 filetype=scala foldmethod=marker nospell :
