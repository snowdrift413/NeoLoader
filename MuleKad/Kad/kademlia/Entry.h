//								-*- C++ -*-
// This file is part of the MuleKad Project.
//
// Copyright (c) 2012 David Xanatos ( XanatosDavid@googlemail.com )
// Copyright (c) 2004-2011 Angel Vidal ( kry@amule.org )
// Copyright (c) 2004-2011 aMule Team ( admin@amule.org / http://www.amule.org )
// Copyright (c) 2003-2011 Barry Dunne (http://www.emule-project.net)
//
// Any parts of this program derived from the xMule, lMule or eMule project,
// or contributed by third-party developers are copyrighted by their
// respective authors.
//
// This program is free software; you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation; either version 2 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
// 
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301, USA
//

// Note To Mods //
/*
Please do not change anything here and release it..
There is going to be a new forum created just for the Kademlia side of the client..
If you feel there is an error or a way to improve something, please
post it in the forum first and let us look at it.. If it is a real improvement,
it will be added to the offical client.. Changing something without knowing
what all it does can cause great harm to the network if released in mass form..
Any mod that changes anything within the Kademlia side will not be allowed to advertise
there client on the eMule forum..
*/

#ifndef __KAD_ENTRY_H__
#define __KAD_ENTRY_H__


#include "../utils/UInt128.h"
#include "../Tag.h"
#include <time.h>
#include <list>
#include <map>

struct SSearchTerm;
class CBuffer;

////////////////////////////////////////
namespace Kademlia {
////////////////////////////////////////

class CEntry
{
protected:
	struct sFileNameEntry {
		wstring m_filename;
		uint32_t m_popularityIndex;
	};

public:
	CEntry()
	{
		m_uIP = 0;
		m_uTCPport = 0;
		m_uUDPport = 0;
		m_uSize = 0;
		m_tLifeTime = time(NULL);
		m_bSource = false;
	}

	virtual		~CEntry();
	virtual CEntry*	Copy() const;
	virtual bool	IsKeyEntry() const throw()	{ return false; }
	
	bool	 GetIntTagValue(const wstring& tagname, uint64_t& value, bool includeVirtualTags = true) const;
	wstring GetStrTagValue(const wstring& tagname) const;

	void	 AddTag(CTag *tag)				{ m_taglist.push_back(tag); }
	uint32_t GetTagCount() const			{ return m_taglist.size() + ((m_uSize != 0) ? 1 : 0) + (GetCommonFileName().empty() ? 0 : 1); }
	void	 WriteTagList(CBuffer* data)	{ WriteTagListInc(data, 0); }

	wstring GetCommonFileNameLowerCase() const;
	wstring GetCommonFileName() const;
	void	 SetFileName(const wstring& name);

	uint32_t m_uIP;
	uint16_t m_uTCPport;
	uint16_t m_uUDPport;
	CUInt128 m_uKeyID;
	CUInt128 m_uSourceID;
	uint64_t m_uSize;
	time_t m_tLifeTime;
	bool m_bSource;

protected:
	void	WriteTagListInc(CBuffer *data, uint32_t increaseTagNumber = 0);
	typedef std::list<sFileNameEntry>	FileNameList;
	FileNameList	m_filenames;
	TagPtrList	m_taglist;
};

class CKeyEntry : public CEntry
{
protected:
	struct sPublishingIP {
		uint32_t m_ip;
		time_t	 m_lastPublish;
		uint16_t m_byAICHHashIdx;
	};

      public:
	CKeyEntry();
	virtual ~CKeyEntry();

	virtual CEntry*	Copy() const			{ return CEntry::Copy(); }
	virtual bool	IsKeyEntry() const throw()	{ return true; }

	bool	SearchTermsMatch(const SSearchTerm *searchTerm) const;
	void	MergeIPsAndFilenames(CKeyEntry* fromEntry);
	void	CleanUpTrackedPublishers();
	double	GetTrustValue();
	void	WritePublishTrackingDataToFile(CBuffer *data);
	void	ReadPublishTrackingDataFromFile(CBuffer *data, bool bIncludesAICH);
	void	DirtyDeletePublishData();
	void	WriteTagListWithPublishInfo(CBuffer *data);
	uint16_t AddRemoveAICHHash(const byte* hash, bool bAdd);
	uint16_t GetAICHHashCount() const						{ return (uint16_t)m_aAICHHashs.size(); }
	static void	ResetGlobalTrackingMap()	{ s_globalPublishIPs.clear(); }

protected:
	void	ReCalculateTrustValue();
	static void	AdjustGlobalPublishTracking(uint32_t ip, bool increase, const wstring& dbgReason);

	typedef std::list<sPublishingIP>	PublishingIPList;
	typedef std::map<uint32_t, uint32_t>	GlobalPublishIPMap;

	uint32_t m_lastTrustValueCalc;
	double	 m_trustValue;
	PublishingIPList *		m_publishingIPs;
	static GlobalPublishIPMap	s_globalPublishIPs;	// tracks count of publishings for each 255.255.255.0/24 subnet

			
	vector<uint8>		m_anAICHHashPopularity;
	struct SAICHHash
	{
		SAICHHash() {memset(Hash,0,20);}
		SAICHHash(const byte* hash) {memcpy(Hash,hash,20);}
		SAICHHash&	operator=(const SAICHHash& k1)		{ memcpy(Hash, k1.Hash, 20); return *this; }
		friend bool operator==(const SAICHHash& k1,const SAICHHash& k2)	{ return memcmp(k1.Hash, k2.Hash, 20) == 0;}
		friend bool operator!=(const SAICHHash& k1,const SAICHHash& k2)	{ return !(k1 == k2); }

		byte Hash[20];
	};
	vector<SAICHHash>	m_aAICHHashs;

};

}

#endif // __KAD_ENTRY_H__
// File_checked_for_headers
