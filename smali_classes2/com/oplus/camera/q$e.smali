.class Lcom/oplus/camera/q$e;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/q;

.field private b:Landroid/location/Location;

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/q;Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/oplus/camera/q$e;->a:Lcom/oplus/camera/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 369
    iput-boolean p1, p0, Lcom/oplus/camera/q$e;->c:Z

    .line 373
    iput-object p2, p0, Lcom/oplus/camera/q$e;->d:Ljava/lang/String;

    .line 374
    new-instance p1, Landroid/location/Location;

    iget-object p2, p0, Lcom/oplus/camera/q$e;->d:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/camera/q$e;->b:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public a()Landroid/location/Location;
    .locals 1

    .line 432
    iget-boolean v0, p0, Lcom/oplus/camera/q$e;->c:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oplus/camera/q$e;->b:Landroid/location/Location;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public a(Z)V
    .locals 0

    .line 378
    iput-boolean p1, p0, Lcom/oplus/camera/q$e;->c:Z

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 383
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q$e;->a:Lcom/oplus/camera/q;

    invoke-static {v0}, Lcom/oplus/camera/q;->e(Lcom/oplus/camera/q;)Z

    move-result v0

    const-string v1, "LocationManager"

    if-nez v0, :cond_1

    const-string p0, "onLocationChanged when listener is Empty, so return"

    .line 389
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 394
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocationListener, onLocationChanged, mProvider: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/q$e;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mbValid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oplus/camera/q$e;->c:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/oplus/camera/q$e;->a:Lcom/oplus/camera/q;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/q;J)J

    .line 397
    iget-object v0, p0, Lcom/oplus/camera/q$e;->b:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    const/4 v0, 0x1

    .line 398
    iput-boolean v0, p0, Lcom/oplus/camera/q$e;->c:Z

    .line 399
    iget-object v0, p0, Lcom/oplus/camera/q$e;->a:Lcom/oplus/camera/q;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/oplus/camera/q;->a(Lcom/oplus/camera/q;Landroid/location/Location;Z)V

    .line 400
    iget-object p0, p0, Lcom/oplus/camera/q$e;->a:Lcom/oplus/camera/q;

    invoke-static {p0}, Lcom/oplus/camera/q;->g(Lcom/oplus/camera/q;)V

    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    .line 409
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProviderDisabled, mbValid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/oplus/camera/q$e;->c:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationManager"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 411
    iput-boolean p1, p0, Lcom/oplus/camera/q$e;->c:Z

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStatusChanged, status: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mbValid: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/oplus/camera/q$e;->c:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "LocationManager"

    invoke-static {p3, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 420
    iput-boolean p1, p0, Lcom/oplus/camera/q$e;->c:Z

    :goto_0
    return-void
.end method
