/*
 * sfile.cxx
 *
 * Structured file I/O channel.
 *
 * Portable Windows Library
 *
 * Copyright (c) 1993-1998 Equivalence Pty. Ltd.
 *
 * The contents of this file are subject to the Mozilla Public License
 * Version 1.0 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS"
 * basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
 * the License for the specific language governing rights and limitations
 * under the License.
 *
 * The Original Code is Portable Windows Library.
 *
 * The Initial Developer of the Original Code is Equivalence Pty. Ltd.
 *
 * Portions are Copyright (C) 1993 Free Software Foundation, Inc.
 * All Rights Reserved.
 *
 * Contributor(s): ______________________________________.
 *
 * $Revision: 29502 $
 * $Author: rjongbloed $
 * $Date: 2013-04-15 01:10:13 +0100 (Mon, 15 Apr 2013) $
 */

#ifdef __GNUC__
#pragma implementation "sfile.h"
#endif

#if 0

#error "sfile.cxx is deprecated - please remove from the build"

#include <ptlib.h>

///////////////////////////////////////////////////////////////////////////////
// PStructuredFile

PStructuredFile::PStructuredFile()
{
  structureSize = 0;
  structure = NULL;
  numElements = 0;
}


PStructuredFile::PStructuredFile(OpenMode mode, OpenOptions opts)
  : PFile(mode, opts)
{
  structureSize = 0;
  structure = NULL;
  numElements = 0;
}


PStructuredFile::PStructuredFile(const PFilePath & name, OpenMode mode, OpenOptions opts)
  : PFile(name, mode, opts)
{
  structureSize = 0;
  structure = NULL;
  numElements = 0;
}


PBoolean PStructuredFile::Read(void * buffer)
{
  PAssert(structureSize > 0, PInvalidParameter);
  if (!PFile::Read(buffer, structureSize))
    return false;
  if (GetLastReadCount() != structureSize)
    return false;
  // Translate all structure elements according to endian-ness.
  return true;
}
      

PBoolean PStructuredFile::Write(const void * buffer)
{
  PAssert(structureSize > 0, PInvalidParameter);
  // Translate all structure elements according to endian-ness.
  return PFile::Write(buffer, structureSize);
}


void PStructuredFile::SetStructure(Element * struc, PINDEX numElem)
{
  structure = struc;
  numElements = numElem;
}


// End Of File ///////////////////////////////////////////////////////////////
#endif