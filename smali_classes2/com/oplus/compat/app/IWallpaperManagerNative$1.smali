.class final Lcom/oplus/compat/app/IWallpaperManagerNative$1;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source "IWallpaperManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/app/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/IWallpaperManagerCallbackNative;


# virtual methods
.method public onWallpaperChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/oplus/compat/app/IWallpaperManagerNative$1;->a:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperChanged()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    iget-object p0, p0, Lcom/oplus/compat/app/IWallpaperManagerNative$1;->a:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    return-void
.end method
