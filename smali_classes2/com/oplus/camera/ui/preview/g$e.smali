.class public Lcom/oplus/camera/ui/preview/g$e;
.super Ljava/lang/Object;
.source "CameraPreviewUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 3887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3884
    iput v0, p0, Lcom/oplus/camera/ui/preview/g$e;->a:I

    .line 3885
    iput v0, p0, Lcom/oplus/camera/ui/preview/g$e;->b:I

    .line 3888
    iput p1, p0, Lcom/oplus/camera/ui/preview/g$e;->a:I

    .line 3889
    iput p2, p0, Lcom/oplus/camera/ui/preview/g$e;->b:I

    return-void
.end method
