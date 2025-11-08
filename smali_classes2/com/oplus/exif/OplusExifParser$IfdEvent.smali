.class Lcom/oplus/exif/OplusExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "OplusExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exif/OplusExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IfdEvent"
.end annotation


# instance fields
.field ifd:I

.field isRequested:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0

    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 892
    iput p1, p0, Lcom/oplus/exif/OplusExifParser$IfdEvent;->ifd:I

    .line 893
    iput-boolean p2, p0, Lcom/oplus/exif/OplusExifParser$IfdEvent;->isRequested:Z

    return-void
.end method
