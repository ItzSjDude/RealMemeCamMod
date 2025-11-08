.class public Lcom/oplus/camera/ui/menu/a/c;
.super Ljava/lang/Object;
.source "HeadlineHelper.java"


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->c:Ljava/util/List;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const/4 v0, 0x1

    .line 62
    iput v0, p0, Lcom/oplus/camera/ui/menu/a/c;->e:I

    .line 63
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/c;->f:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .locals 1

    .line 132
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "starVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "highDefinition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "idPhoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "microscope"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "panorama"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "3dPhoto"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "professional"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "soloopTemplate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "slowVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "portrait"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "breenoScan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "microscopeVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "night"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "movie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "macro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "xpan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "more"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "longExposure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "fastVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "superText"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "ultraHD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "tiltShift"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "highPixel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "multiCamera"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "fishEye"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto :goto_1

    :sswitch_19
    const-string v0, "street"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    goto :goto_1

    :sswitch_1a
    const-string v0, "starry"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto :goto_1

    :sswitch_1b
    const-string v0, "tiltShiftFastVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto :goto_1

    :sswitch_1c
    const-string v0, "double_exposure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_1

    :sswitch_1d
    const-string v0, "timelapsePro"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto :goto_1

    :sswitch_1e
    const-string v0, "groupshot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto :goto_1

    :sswitch_1f
    const-string v0, "sticker"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_20
    const-string v0, "commonVideo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const p0, 0x7f10024a

    goto/16 :goto_2

    :pswitch_0
    const p0, 0x7f100242

    goto/16 :goto_2

    :pswitch_1
    const p0, 0x7f10026d

    goto/16 :goto_2

    :pswitch_2
    const p0, 0x7f100256

    goto/16 :goto_2

    :pswitch_3
    const p0, 0x7f100270

    goto/16 :goto_2

    :pswitch_4
    const p0, 0x7f100273

    goto/16 :goto_2

    :pswitch_5
    const p0, 0x7f10026b

    goto/16 :goto_2

    :pswitch_6
    const p0, 0x7f10024b

    goto/16 :goto_2

    :pswitch_7
    const p0, 0x7f100249

    goto/16 :goto_2

    :pswitch_8
    const p0, 0x7f100263

    goto/16 :goto_2

    :pswitch_9
    const p0, 0x7f100271

    goto/16 :goto_2

    :pswitch_a
    const p0, 0x7f100259

    goto/16 :goto_2

    :pswitch_b
    const p0, 0x7f10025c

    goto :goto_2

    .line 202
    :pswitch_c
    invoke-static {}, Lcom/oplus/camera/ui/menu/a/c;->c()I

    move-result p0

    goto :goto_2

    :pswitch_d
    const p0, 0x7f10024e

    goto :goto_2

    :pswitch_e
    const p0, 0x7f100255

    goto :goto_2

    :pswitch_f
    const p0, 0x7f1005ab

    goto :goto_2

    :pswitch_10
    const p0, 0x7f1006db

    goto :goto_2

    :pswitch_11
    const p0, 0x7f10024f

    goto :goto_2

    :pswitch_12
    const p0, 0x7f10026f

    goto :goto_2

    :pswitch_13
    const p0, 0x7f10025a

    goto :goto_2

    :pswitch_14
    const p0, 0x7f100264

    goto :goto_2

    :pswitch_15
    const p0, 0x7f10026c

    goto :goto_2

    .line 162
    :pswitch_16
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x7f10026e

    goto :goto_2

    :cond_1
    const p0, 0x7f100257

    goto :goto_2

    :pswitch_17
    const p0, 0x7f100268

    goto :goto_2

    :pswitch_18
    const p0, 0x7f100267

    goto :goto_2

    :pswitch_19
    const p0, 0x7f100265

    goto :goto_2

    :pswitch_1a
    const p0, 0x7f100272

    goto :goto_2

    :pswitch_1b
    const p0, 0x7f10025b

    goto :goto_2

    :pswitch_1c
    const p0, 0x7f100269

    goto :goto_2

    :pswitch_1d
    const p0, 0x7f10024d

    :goto_2
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_20
        -0x70aaf6c3 -> :sswitch_1f
        -0x58568607 -> :sswitch_1e
        -0x4b90eff3 -> :sswitch_1d
        -0x3f2f124b -> :sswitch_1c
        -0x358924c6 -> :sswitch_1b
        -0x353237e7 -> :sswitch_1a
        -0x352aaffd -> :sswitch_19
        -0x3292a347 -> :sswitch_18
        -0x2bdb0a42 -> :sswitch_17
        -0x2a24c5fc -> :sswitch_16
        -0x19cca83b -> :sswitch_15
        -0x13e39a58 -> :sswitch_14
        -0x13d70cb8 -> :sswitch_13
        -0x21dda81 -> :sswitch_12
        -0x1bf945d -> :sswitch_11
        0x333b55 -> :sswitch_10
        0x383d25 -> :sswitch_f
        0x62d9bcc -> :sswitch_e
        0x6343f30 -> :sswitch_d
        0x63f6418 -> :sswitch_c
        0x136c544b -> :sswitch_b
        0x273b50ce -> :sswitch_a
        0x2b77bb9b -> :sswitch_9
        0x2d8e52fa -> :sswitch_8
        0x2e6a779a -> :sswitch_7
        0x34289e27 -> :sswitch_6
        0x391aba21 -> :sswitch_5
        0x3fc6a675 -> :sswitch_4
        0x51de9a10 -> :sswitch_3
        0x61ab39d7 -> :sswitch_2
        0x6594cc95 -> :sswitch_1
        0x7f784149 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(I)Ljava/lang/String;
    .locals 0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    packed-switch p0, :pswitch_data_5

    const-string p0, "common"

    goto/16 :goto_0

    :pswitch_0
    const-string p0, "xpan"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "commonVideo"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "timelapsePro"

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "tiltShift"

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "superText"

    goto :goto_0

    :pswitch_5
    const-string p0, "street"

    goto :goto_0

    :pswitch_6
    const-string p0, "sticker"

    goto :goto_0

    :pswitch_7
    const-string p0, "starry"

    goto :goto_0

    :pswitch_8
    const-string p0, "slowVideo"

    goto :goto_0

    :pswitch_9
    const-string p0, "professional"

    goto :goto_0

    :pswitch_a
    const-string p0, "portrait"

    goto :goto_0

    :pswitch_b
    const-string p0, "panorama"

    goto :goto_0

    :pswitch_c
    const-string p0, "night"

    goto :goto_0

    :pswitch_d
    const-string p0, "soloopTemplate"

    goto :goto_0

    :pswitch_e
    const-string p0, "multiCamera"

    goto :goto_0

    :pswitch_f
    const-string p0, "movie"

    goto :goto_0

    :pswitch_10
    const-string p0, "more"

    goto :goto_0

    :pswitch_11
    const-string p0, "microscope"

    goto :goto_0

    :pswitch_12
    const-string p0, "macro"

    goto :goto_0

    :pswitch_13
    const-string p0, "longExposure"

    goto :goto_0

    :pswitch_14
    const-string p0, "idPhoto"

    goto :goto_0

    :pswitch_15
    const-string p0, "highDefinition"

    goto :goto_0

    :pswitch_16
    const-string p0, "groupshot"

    goto :goto_0

    :pswitch_17
    const-string p0, "fishEye"

    goto :goto_0

    :pswitch_18
    const-string p0, "fastVideo"

    goto :goto_0

    :sswitch_0
    const-string p0, "ultraHD"

    goto :goto_0

    :sswitch_1
    const-string p0, "highPixel"

    goto :goto_0

    :sswitch_2
    const-string p0, "double_exposure"

    goto :goto_0

    :sswitch_3
    const-string p0, "breenoScan"

    goto :goto_0

    :sswitch_4
    const-string p0, "3dPhoto"

    :goto_0
    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100242 -> :sswitch_4
        0x7f100249 -> :sswitch_3
        0x7f10024b -> :sswitch_2
        0x7f1005ab -> :sswitch_1
        0x7f1006db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f10024d
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f100255
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f100259
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f100263
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f100267
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x7f10026b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static b(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    goto/16 :goto_0

    :pswitch_1
    const p0, 0x7f1005ab

    goto/16 :goto_0

    :pswitch_2
    const p0, 0x7f100242

    goto/16 :goto_0

    :pswitch_3
    const p0, 0x7f10024e

    goto/16 :goto_0

    :pswitch_4
    const p0, 0x7f100273

    goto/16 :goto_0

    :pswitch_5
    const p0, 0x7f100256

    goto/16 :goto_0

    :pswitch_6
    const p0, 0x7f10026d

    goto/16 :goto_0

    :pswitch_7
    const p0, 0x7f100271

    goto/16 :goto_0

    :pswitch_8
    const p0, 0x7f100270

    goto/16 :goto_0

    :pswitch_9
    const p0, 0x7f10025a

    goto/16 :goto_0

    :pswitch_a
    const p0, 0x7f100267

    goto/16 :goto_0

    :pswitch_b
    const p0, 0x7f100272

    goto/16 :goto_0

    :pswitch_c
    const p0, 0x7f10024a

    goto/16 :goto_0

    :pswitch_d
    const p0, 0x7f10026b

    goto :goto_0

    :pswitch_e
    const p0, 0x7f10024b

    goto :goto_0

    :pswitch_f
    const p0, 0x7f100263

    goto :goto_0

    :pswitch_10
    const p0, 0x7f100259

    goto :goto_0

    :pswitch_11
    const p0, 0x7f10024f

    goto :goto_0

    :pswitch_12
    const p0, 0x7f10025c

    goto :goto_0

    :pswitch_13
    const p0, 0x7f100255

    goto :goto_0

    .line 638
    :pswitch_14
    invoke-static {}, Lcom/oplus/camera/ui/menu/a/c;->c()I

    move-result p0

    goto :goto_0

    :pswitch_15
    const p0, 0x7f1006db

    goto :goto_0

    .line 598
    :pswitch_16
    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f10026e

    goto :goto_0

    :cond_0
    const p0, 0x7f100257

    goto :goto_0

    :pswitch_17
    const p0, 0x7f100249

    goto :goto_0

    :pswitch_18
    const p0, 0x7f10026f

    goto :goto_0

    :pswitch_19
    const p0, 0x7f10026c

    goto :goto_0

    :pswitch_1a
    const p0, 0x7f100264

    goto :goto_0

    :pswitch_1b
    const p0, 0x7f100268

    goto :goto_0

    :pswitch_1c
    const p0, 0x7f10025b

    goto :goto_0

    :pswitch_1d
    const p0, 0x7f100269

    goto :goto_0

    :pswitch_1e
    const p0, 0x7f10024d

    goto :goto_0

    :pswitch_1f
    const p0, 0x7f100265

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static b(Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    .line 270
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xb

    const/16 v3, 0xf

    const/16 v4, 0x8

    const/16 v5, 0x17

    const/4 v6, 0x5

    const/4 v7, 0x7

    const/16 v8, 0xa

    const/4 v9, 0x4

    const/16 v10, 0x16

    const/4 v11, 0x0

    const/16 v12, 0x15

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/16 v16, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "starVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "highDefinition"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "idPhoto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "microscope"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "panorama"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "3dPhoto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "professional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "soloopTemplate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v10

    goto/16 :goto_1

    :sswitch_8
    const-string v1, "slowVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v15

    goto/16 :goto_1

    :sswitch_9
    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto/16 :goto_1

    :sswitch_a
    const-string v1, "breenoScan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_b
    const-string v1, "microscopeVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_c
    const-string v1, "night"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v1, "movie"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v14

    goto/16 :goto_1

    :sswitch_e
    const-string v1, "macro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    goto/16 :goto_1

    :sswitch_f
    const-string v1, "xpan"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_10
    const-string v1, "more"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    :sswitch_11
    const-string v1, "longExposure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_12
    const-string v1, "fastVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v11

    goto/16 :goto_1

    :sswitch_13
    const-string v1, "superText"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_14
    const-string v1, "ultraHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v1, "tiltShift"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_16
    const-string v1, "highPixel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_17
    const-string v1, "multiCamera"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_18
    const-string v1, "fishEye"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_19
    const-string v1, "street"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f

    goto :goto_1

    :sswitch_1a
    const-string v1, "starry"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_1b
    const-string v1, "tiltShiftFastVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_1

    :sswitch_1c
    const-string v1, "double_exposure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_1d
    const-string v1, "timelapsePro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v12

    goto :goto_1

    :sswitch_1e
    const-string v1, "common"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_1f
    const-string v1, "groupshot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_20
    const-string v1, "sticker"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_21
    const-string v1, "commonVideo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v13

    goto :goto_1

    :cond_0
    :goto_0
    move/from16 v0, v16

    :goto_1
    packed-switch v0, :pswitch_data_0

    move/from16 v2, v16

    goto/16 :goto_2

    :pswitch_0
    const/16 v2, 0x1e

    goto/16 :goto_2

    :pswitch_1
    const/16 v2, 0x1b

    goto/16 :goto_2

    :pswitch_2
    const/16 v2, 0x1a

    goto/16 :goto_2

    :pswitch_3
    const/16 v2, 0x18

    goto/16 :goto_2

    :pswitch_4
    const/16 v2, 0x1c

    goto/16 :goto_2

    :pswitch_5
    const/16 v2, 0x13

    goto/16 :goto_2

    :pswitch_6
    const/16 v2, 0x12

    goto/16 :goto_2

    :pswitch_7
    const/16 v2, 0x9

    goto :goto_2

    :pswitch_8
    const/16 v2, 0x14

    goto :goto_2

    :pswitch_9
    const/16 v2, 0x11

    goto :goto_2

    :pswitch_a
    const/16 v2, 0x19

    goto :goto_2

    :pswitch_b
    const/16 v2, 0x10

    goto :goto_2

    :pswitch_c
    const/16 v2, 0xe

    goto :goto_2

    :pswitch_d
    const/16 v2, 0xc

    goto :goto_2

    :pswitch_e
    const/16 v2, 0x1d

    goto :goto_2

    :pswitch_f
    const/16 v2, 0xd

    goto :goto_2

    :pswitch_10
    const/16 v2, 0x1f

    goto :goto_2

    :pswitch_11
    move v2, v3

    goto :goto_2

    :pswitch_12
    move v2, v4

    goto :goto_2

    :pswitch_13
    move v2, v5

    goto :goto_2

    :pswitch_14
    move v2, v6

    goto :goto_2

    :pswitch_15
    move v2, v7

    goto :goto_2

    :pswitch_16
    move v2, v8

    goto :goto_2

    :pswitch_17
    move v2, v9

    goto :goto_2

    :pswitch_18
    move v2, v10

    goto :goto_2

    :pswitch_19
    move v2, v11

    goto :goto_2

    :pswitch_1a
    move v2, v12

    goto :goto_2

    :pswitch_1b
    move v2, v13

    goto :goto_2

    :pswitch_1c
    move v2, v14

    goto :goto_2

    :pswitch_1d
    move v2, v15

    :goto_2
    :pswitch_1e
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x733d8ab0 -> :sswitch_21
        -0x70aaf6c3 -> :sswitch_20
        -0x58568607 -> :sswitch_1f
        -0x50c0d615 -> :sswitch_1e
        -0x4b90eff3 -> :sswitch_1d
        -0x3f2f124b -> :sswitch_1c
        -0x358924c6 -> :sswitch_1b
        -0x353237e7 -> :sswitch_1a
        -0x352aaffd -> :sswitch_19
        -0x3292a347 -> :sswitch_18
        -0x2bdb0a42 -> :sswitch_17
        -0x2a24c5fc -> :sswitch_16
        -0x19cca83b -> :sswitch_15
        -0x13e39a58 -> :sswitch_14
        -0x13d70cb8 -> :sswitch_13
        -0x21dda81 -> :sswitch_12
        -0x1bf945d -> :sswitch_11
        0x333b55 -> :sswitch_10
        0x383d25 -> :sswitch_f
        0x62d9bcc -> :sswitch_e
        0x6343f30 -> :sswitch_d
        0x63f6418 -> :sswitch_c
        0x136c544b -> :sswitch_b
        0x273b50ce -> :sswitch_a
        0x2b77bb9b -> :sswitch_9
        0x2d8e52fa -> :sswitch_8
        0x2e6a779a -> :sswitch_7
        0x34289e27 -> :sswitch_6
        0x391aba21 -> :sswitch_5
        0x3fc6a675 -> :sswitch_4
        0x51de9a10 -> :sswitch_3
        0x61ab39d7 -> :sswitch_2
        0x6594cc95 -> :sswitch_1
        0x7f784149 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_1e
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static c()I
    .locals 3

    .line 546
    invoke-static {}, Lcom/oplus/camera/util/Util;->aH()I

    move-result v0

    const v1, 0x7f100251

    const/16 v2, 0x30

    if-ne v2, v0, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x32

    if-ne v2, v0, :cond_1

    const v0, 0x7f100252

    return v0

    :cond_1
    const/16 v2, 0x40

    if-ne v2, v0, :cond_2

    const v0, 0x7f100253

    return v0

    :cond_2
    const/16 v2, 0x6c

    if-ne v2, v0, :cond_3

    const v0, 0x7f100250

    return v0

    :cond_3
    return v1
.end method

.method public static c(I)I
    .locals 2

    const v0, 0x7f080473

    const v1, 0x7f080482

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :pswitch_1
    const v0, 0x7f08046d

    goto/16 :goto_0

    :pswitch_2
    const v0, 0x7f08046f

    goto/16 :goto_0

    :pswitch_3
    const v0, 0x7f080484

    goto/16 :goto_0

    :pswitch_4
    const v0, 0x7f080474

    goto :goto_0

    :pswitch_5
    const v0, 0x7f08047f

    goto :goto_0

    :pswitch_6
    const v0, 0x7f080481

    goto :goto_0

    :pswitch_7
    const v0, 0x7f08047e

    goto :goto_0

    :pswitch_8
    const v0, 0x7f08046e

    goto :goto_0

    :pswitch_9
    const v0, 0x7f08047d

    goto :goto_0

    :pswitch_a
    const v0, 0x7f080476

    goto :goto_0

    :pswitch_b
    const v0, 0x7f08058f

    goto :goto_0

    :pswitch_c
    const v0, 0x7f080472

    goto :goto_0

    :pswitch_d
    const v0, 0x7f080483

    goto :goto_0

    :pswitch_e
    const v0, 0x7f080475

    goto :goto_0

    :pswitch_f
    const v0, 0x7f080470

    goto :goto_0

    :pswitch_10
    const v0, 0x7f080480

    goto :goto_0

    :pswitch_11
    const v0, 0x7f08047b

    goto :goto_0

    :pswitch_12
    const v0, 0x7f080471

    goto :goto_0

    .line 718
    :pswitch_13
    invoke-static {}, Lcom/oplus/camera/util/Util;->ao()Z

    move-result p0

    if-eqz p0, :cond_0

    const v0, 0x7f08047a

    goto :goto_0

    :cond_0
    const v0, 0x7f080479

    goto :goto_0

    :pswitch_14
    const v0, 0x7f080477

    goto :goto_0

    :pswitch_15
    const v0, 0x7f08047c

    goto :goto_0

    :pswitch_16
    move v0, v1

    goto :goto_0

    :pswitch_17
    const v0, 0x7f080478

    :goto_0
    :pswitch_18
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_18
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_18
        :pswitch_0
        :pswitch_6
        :pswitch_16
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_d
    .end packed-switch
.end method

.method public static c(Ljava/lang/String;)I
    .locals 2

    .line 945
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100265

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_2

    .line 947
    :cond_0
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10024d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    goto/16 :goto_2

    .line 949
    :cond_1
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x4

    goto/16 :goto_2

    .line 951
    :cond_2
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100269

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x2

    goto/16 :goto_2

    .line 953
    :cond_3
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10025b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p0, 0x3

    goto/16 :goto_2

    .line 955
    :cond_4
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100264

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 p0, 0x5

    goto/16 :goto_2

    .line 957
    :cond_5
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10026c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 p0, 0x7

    goto/16 :goto_2

    .line 959
    :cond_6
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10026f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 p0, 0x8

    goto/16 :goto_2

    .line 961
    :cond_7
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10024f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0xf

    goto/16 :goto_2

    .line 963
    :cond_8
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100257

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p0, 0xa

    goto/16 :goto_2

    .line 965
    :cond_9
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 p0, 0x10

    goto/16 :goto_2

    .line 967
    :cond_a
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100271

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x19

    goto/16 :goto_2

    .line 969
    :cond_b
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100255

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p0, 0xd

    goto/16 :goto_2

    .line 971
    :cond_c
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10024e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p0, 0x1d

    goto/16 :goto_2

    .line 973
    :cond_d
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10025c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p0, 0xe

    goto/16 :goto_2

    .line 975
    :cond_e
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10026a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 p0, 0x11

    goto/16 :goto_2

    .line 977
    :cond_f
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100272

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 p0, 0x15

    goto/16 :goto_2

    .line 979
    :cond_10
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100267

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/16 p0, 0x16

    goto/16 :goto_2

    .line 981
    :cond_11
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f1006db

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/16 p0, 0xb

    goto/16 :goto_2

    .line 983
    :cond_12
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f1005ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 p0, 0x1f

    goto/16 :goto_2

    .line 985
    :cond_13
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100266

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10024a

    .line 986
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    goto/16 :goto_1

    .line 988
    :cond_14
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10024b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 p0, 0x12

    goto/16 :goto_2

    .line 990
    :cond_15
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10026b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x13

    goto/16 :goto_2

    .line 992
    :cond_16
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100256

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/16 p0, 0x1b

    goto/16 :goto_2

    .line 994
    :cond_17
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100251

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100252

    .line 995
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100253

    .line 996
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100250

    .line 997
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_0

    .line 999
    :cond_18
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100270

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 p0, 0x18

    goto :goto_2

    .line 1001
    :cond_19
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/16 p0, 0x1e

    goto :goto_2

    .line 1003
    :cond_1a
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f10026d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/16 p0, 0x1a

    goto :goto_2

    .line 1005
    :cond_1b
    sget-object v0, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    const v1, 0x7f100273

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1c

    const/16 p0, 0x1c

    goto :goto_2

    :cond_1c
    const/4 p0, -0x1

    goto :goto_2

    :cond_1d
    :goto_0
    const/16 p0, 0xc

    goto :goto_2

    :cond_1e
    :goto_1
    const/16 p0, 0x14

    :goto_2
    return p0
.end method

.method public static d(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string p0, "common"

    goto/16 :goto_0

    :pswitch_1
    const-string p0, "highPixel"

    goto/16 :goto_0

    :pswitch_2
    const-string p0, "3dPhoto"

    goto/16 :goto_0

    :pswitch_3
    const-string p0, "fishEye"

    goto/16 :goto_0

    :pswitch_4
    const-string p0, "xpan"

    goto :goto_0

    :pswitch_5
    const-string p0, "longExposure"

    goto :goto_0

    :pswitch_6
    const-string p0, "street"

    goto :goto_0

    :pswitch_7
    const-string p0, "timelapsePro"

    goto :goto_0

    :pswitch_8
    const-string p0, "tiltShift"

    goto :goto_0

    :pswitch_9
    const-string p0, "portrait"

    goto :goto_0

    :pswitch_a
    const-string p0, "commonVideo"

    goto :goto_0

    :pswitch_b
    const-string p0, "starry"

    goto :goto_0

    :pswitch_c
    const-string p0, "double_exposure"

    goto :goto_0

    :pswitch_d
    const-string p0, "soloopTemplate"

    goto :goto_0

    :pswitch_e
    const-string p0, "microscope"

    goto :goto_0

    :pswitch_f
    const-string p0, "groupshot"

    goto :goto_0

    :pswitch_10
    const-string p0, "multiCamera"

    goto :goto_0

    :pswitch_11
    const-string p0, "idPhoto"

    goto :goto_0

    :pswitch_12
    const-string p0, "highDefinition"

    goto :goto_0

    :pswitch_13
    const-string p0, "ultraHD"

    goto :goto_0

    :pswitch_14
    const-string p0, "macro"

    goto :goto_0

    :pswitch_15
    const-string p0, "breenoScan"

    goto :goto_0

    :pswitch_16
    const-string p0, "superText"

    goto :goto_0

    :pswitch_17
    const-string p0, "sticker"

    goto :goto_0

    :pswitch_18
    const-string p0, "night"

    goto :goto_0

    :pswitch_19
    const-string p0, "professional"

    goto :goto_0

    :pswitch_1a
    const-string p0, "movie"

    goto :goto_0

    :pswitch_1b
    const-string p0, "slowVideo"

    goto :goto_0

    :pswitch_1c
    const-string p0, "fastVideo"

    goto :goto_0

    :pswitch_1d
    const-string p0, "panorama"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static e(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    packed-switch p0, :pswitch_data_4

    const/4 p0, -0x1

    goto/16 :goto_0

    :pswitch_0
    const/16 p0, 0x1c

    goto/16 :goto_0

    :pswitch_1
    const/16 p0, 0x15

    goto/16 :goto_0

    :pswitch_2
    const/16 p0, 0x19

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x18

    goto :goto_0

    :pswitch_4
    const/16 p0, 0x8

    goto :goto_0

    :pswitch_5
    const/16 p0, 0x1a

    goto :goto_0

    :pswitch_6
    const/4 p0, 0x7

    goto :goto_0

    :pswitch_7
    const/16 p0, 0x13

    goto :goto_0

    :pswitch_8
    const/16 p0, 0x11

    goto :goto_0

    :pswitch_9
    const/4 p0, 0x2

    goto :goto_0

    :pswitch_a
    const/4 p0, 0x4

    goto :goto_0

    :pswitch_b
    const/16 p0, 0x16

    goto :goto_0

    :pswitch_c
    const/4 p0, 0x0

    goto :goto_0

    :pswitch_d
    const/4 p0, 0x5

    goto :goto_0

    :pswitch_e
    const/16 p0, 0xe

    goto :goto_0

    :pswitch_f
    const/4 p0, 0x3

    goto :goto_0

    :pswitch_10
    const/16 p0, 0xa

    goto :goto_0

    :pswitch_11
    const/16 p0, 0x1b

    goto :goto_0

    :pswitch_12
    const/16 p0, 0xd

    goto :goto_0

    :pswitch_13
    const/16 p0, 0xc

    goto :goto_0

    :pswitch_14
    const/16 p0, 0xf

    goto :goto_0

    :pswitch_15
    const/16 p0, 0x1d

    goto :goto_0

    :pswitch_16
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_17
    const/16 p0, 0x12

    goto :goto_0

    :pswitch_18
    const/16 p0, 0x14

    goto :goto_0

    :sswitch_0
    const/16 p0, 0xb

    goto :goto_0

    :sswitch_1
    const/16 p0, 0x1f

    goto :goto_0

    :sswitch_2
    const/16 p0, 0x10

    goto :goto_0

    :sswitch_3
    const/16 p0, 0x1e

    :goto_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100242 -> :sswitch_3
        0x7f100259 -> :sswitch_2
        0x7f1005ab -> :sswitch_1
        0x7f1006db -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x7f10024a
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f10024d
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f100255
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7f10025b
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x7f100264
        :pswitch_d
        :pswitch_c
        :pswitch_18
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_10
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMode, mCameraEntryType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oplus/camera/ui/menu/a/c;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadlineHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/oplus/camera/ui/menu/a/c;->e:I

    const/4 v2, 0x3

    if-ne v2, v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    const v1, 0x7f100272

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x2

    if-ne v2, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    const v1, 0x7f10024a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_2
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/a/c;->f:Z

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    const v1, 0x7f100267

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v2, 0x1

    if-ne v2, v0, :cond_5

    .line 97
    invoke-static {}, Lcom/oplus/camera/ui/modepanel/b;->a()Lcom/oplus/camera/ui/modepanel/b;

    move-result-object v0

    const-string v2, "position_headline"

    invoke-virtual {v0, v2}, Lcom/oplus/camera/ui/modepanel/b;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 99
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 100
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/oplus/camera/ui/menu/a/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;->INSTANCE:Lcom/oplus/camera/ui/menu/a/-$$Lambda$W2ZbH78ZdPmvIDG_VbnTW6dpYS4;

    invoke-static {v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 101
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/ui/modepanel/i;

    .line 105
    iget-object v3, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/modepanel/i;->e()I

    move-result v2

    invoke-static {v2}, Lcom/oplus/camera/ui/menu/a/c;->b(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMode, query mode list from database, rankList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 114
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 115
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 116
    iget-object v2, p0, Lcom/oplus/camera/ui/menu/a/c;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method public a(Landroid/content/Context;IZZ)V
    .locals 0

    .line 66
    sput-object p1, Lcom/oplus/camera/ui/menu/a/c;->a:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/oplus/camera/ui/menu/a/c;->e:I

    .line 68
    iput-boolean p3, p0, Lcom/oplus/camera/ui/menu/a/c;->f:Z

    .line 69
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p2, 0x7f10024a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p2, 0x7f100272

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p2, 0x7f100264

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p2, 0x7f100267

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p2, 0x7f100271

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/c;->d:Ljava/util/List;

    const p1, 0x7f10025a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/oplus/camera/ui/menu/a/c;->a()V

    .line 126
    :cond_0
    invoke-static {}, Lcom/oplus/camera/screen/a/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/c;->c:Ljava/util/List;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/a/c;->b:Ljava/util/List;

    :goto_0
    return-object p0
.end method
