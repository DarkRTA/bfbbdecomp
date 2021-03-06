#ifndef __BINK_H__
#define __BINK_H__

#include <types.h>

#define BINKSURFACE8P 0
#define BINKSURFACE24 1
#define BINKSURFACE24R 2
#define BINKSURFACE32 3
#define BINKSURFACE32R 4
#define BINKSURFACE32A 5
#define BINKSURFACE32RA 6
#define BINKSURFACE4444 7
#define BINKSURFACE5551 8
#define BINKSURFACE555 9
#define BINKSURFACE565 10
#define BINKSURFACE655 11
#define BINKSURFACE664 12
#define BINKSURFACEYUY2 13
#define BINKSURFACEUYVY 14
#define BINKSURFACEYV12 15
#define BINKSURFACEMASK 15

struct BINK
{
    // Do the members really need to be defined?
};

typedef struct BINK* HBINK;

struct RAD3DIMAGE;
typedef struct RAD3DIMAGE* HRAD3DIMAGE;

#ifdef __cplusplus
extern "C" {
#endif

extern int32 BinkDoFrame(HBINK bnk);
extern int32 BinkCopyToBuffer(HBINK bnk, void* dest, int32 destpitch, uint32 destheight,
                              uint32 destx, uint32 desty, uint32 flags);
extern int32 Lock_RAD_3D_image(HRAD3DIMAGE rad_image, void* out_pixel_buffer,
                               uint32* out_buffer_pitch);
extern void Unlock_RAD_3D_image(HRAD3DIMAGE rad_image);

#ifdef __cplusplus
}
#endif

#endif