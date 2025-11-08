.class Lcom/oplus/exif/OplusExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "OplusExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exif/OplusExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageEvent"
.end annotation


# instance fields
.field stripIndex:I

.field type:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 877
    iput v0, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->stripIndex:I

    .line 878
    iput p1, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->type:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 881
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 882
    iput p1, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->type:I

    .line 883
    iput p2, p0, Lcom/oplus/exif/OplusExifParser$ImageEvent;->stripIndex:I

    return-void
.end method
