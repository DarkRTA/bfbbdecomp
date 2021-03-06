#ifndef ZPORTAL_H
#define ZPORTAL_H

#include "../Core/x/xBase.h"

struct xPortalAsset : xBaseAsset
{
    uint32 assetCameraID;
    uint32 assetMarkerID;
    float32 ang;
    uint32 sceneID;
};

struct _zPortal : xBase
{
    xPortalAsset* passet;
};

void zPortalInit(void* portal, void* passet);
void zPortalInit(_zPortal* portal, xPortalAsset* passet);
void zPortalSave(_zPortal* ent, xSerial* s);
void zPortalLoad(_zPortal* ent, xSerial* s);
int32 zPortalEventCB(xBase* from, xBase* to, uint32 toEvent, const float32* toParam, xBase* b3);

#endif