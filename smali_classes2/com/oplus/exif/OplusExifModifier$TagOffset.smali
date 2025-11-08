.class Lcom/oplus/exif/OplusExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "OplusExifModifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exif/OplusExifModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TagOffset"
.end annotation


# instance fields
.field final mOffset:I

.field final mTag:Lcom/oplus/exif/OplusExifTag;


# direct methods
.method constructor <init>(Lcom/oplus/exif/OplusExifTag;I)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oplus/exif/OplusExifModifier$TagOffset;->mTag:Lcom/oplus/exif/OplusExifTag;

    .line 44
    iput p2, p0, Lcom/oplus/exif/OplusExifModifier$TagOffset;->mOffset:I

    return-void
.end method
