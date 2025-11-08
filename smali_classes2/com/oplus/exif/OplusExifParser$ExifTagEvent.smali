.class Lcom/oplus/exif/OplusExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "OplusExifParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/exif/OplusExifParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifTagEvent"
.end annotation


# instance fields
.field isRequested:Z

.field tag:Lcom/oplus/exif/OplusExifTag;


# direct methods
.method constructor <init>(Lcom/oplus/exif/OplusExifTag;Z)V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput-object p1, p0, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;->tag:Lcom/oplus/exif/OplusExifTag;

    .line 903
    iput-boolean p2, p0, Lcom/oplus/exif/OplusExifParser$ExifTagEvent;->isRequested:Z

    return-void
.end method
