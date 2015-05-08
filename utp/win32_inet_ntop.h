#ifndef __WIN32_INET_NTOP_H__
#define __WIN32_INET_NTOP_H__

#if 1 //((!defined NTDDI_VERSION) || (NTDDI_VERSION < NTDDI_LONGHORN))
const char *_inet_ntop(int af, const void *src, char *dest, size_t length);
int _inet_pton(int af, const char* src, void* dest);
#endif

#endif //__WIN32_INET_NTOP_H__
