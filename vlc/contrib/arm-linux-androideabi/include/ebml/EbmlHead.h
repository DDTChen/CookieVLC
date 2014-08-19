/****************************************************************************
** libebml : parse EBML files, see http://embl.sourceforge.net/
**
** <file/class description>
**
** Copyright (C) 2002-2004 Steve Lhomme.  All rights reserved.
**
** This file is part of libebml.
**
** This library is free software; you can redistribute it and/or
** modify it under the terms of the GNU Lesser General Public
** License as published by the Free Software Foundation; either
** version 2.1 of the License, or (at your option) any later version.
** 
** This library is distributed in the hope that it will be useful,
** but WITHOUT ANY WARRANTY; without even the implied warranty of
** MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
** Lesser General Public License for more details.
** 
** You should have received a copy of the GNU Lesser General Public
** License along with this library; if not, write to the Free Software
** Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
**
** See http://www.matroska.org/license/lgpl/ for LGPL licensing information.
**
** Contact license@matroska.org if any conditions of this licensing are
** not clear to you.
**
**********************************************************************/

/*!
	\file
	\version \$Id$
	\author Steve Lhomme     <robux4 @ users.sf.net>
*/
#ifndef LIBEBML_HEAD_H
#define LIBEBML_HEAD_H

#include "EbmlTypes.h"
#include "EbmlMaster.h"

START_LIBEBML_NAMESPACE

DECLARE_EBML_MASTER(EbmlHead)
	public:
		EbmlHead(const EbmlHead & ElementToClone) : EbmlMaster(ElementToClone) {}

        EBML_CONCRETE_CLASS(EbmlHead)
};

END_LIBEBML_NAMESPACE

#endif // LIBEBML_HEAD_H
