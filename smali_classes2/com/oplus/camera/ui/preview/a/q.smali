.class public Lcom/oplus/camera/ui/preview/a/q;
.super Ljava/lang/Object;
.source "ImageStickerTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/ui/preview/a/q$b;,
        Lcom/oplus/camera/ui/preview/a/q$a;,
        Lcom/oplus/camera/ui/preview/a/q$c;
    }
.end annotation


# static fields
.field private static a:Lcom/oplus/camera/ui/preview/a/q;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/oplus/camera/ui/preview/a/q$c;

.field private e:Landroid/content/SharedPreferences;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Lcom/oplus/camera/ui/preview/a/v;

.field private i:J

.field private j:Lcom/oplus/camera/sticker/h;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/ui/preview/a/q$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Lcom/coui/appcompat/dialog/app/b;

.field private p:Lcom/oplus/camera/sticker/data/StickerItem;

.field private q:Lcom/oplus/camera/sticker/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    .line 91
    new-instance v1, Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-direct {v1}, Lcom/oplus/camera/ui/preview/a/q$c;-><init>()V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    .line 93
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    .line 94
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    .line 95
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    const-wide/16 v1, 0x1

    .line 96
    iput-wide v1, p0, Lcom/oplus/camera/ui/preview/a/q;->i:J

    .line 97
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    .line 98
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/q;->l:Z

    .line 100
    iput v0, p0, Lcom/oplus/camera/ui/preview/a/q;->m:I

    .line 101
    iput-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/q;->n:Z

    .line 977
    new-instance v1, Lcom/oplus/camera/ui/preview/a/q$7;

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/q$7;-><init>(Lcom/oplus/camera/ui/preview/a/q;)V

    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->q:Lcom/oplus/camera/sticker/a;

    .line 106
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    .line 107
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    const-string v1, "sticker_info"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->e:Landroid/content/SharedPreferences;

    .line 109
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/q;->h()V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/q$c;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    return-object p0
.end method

.method private a(Landroid/app/Activity;ZZ)V
    .locals 4

    .line 657
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_1

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->cancel()V

    .line 659
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    .line 662
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c015c

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 663
    move-object v2, v0

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f090361

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz p3, :cond_2

    .line 666
    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 669
    :cond_2
    new-instance p2, Lcom/oplus/camera/ui/preview/a/q$3;

    invoke-direct {p2, p0}, Lcom/oplus/camera/ui/preview/a/q$3;-><init>(Lcom/oplus/camera/ui/preview/a/q;)V

    invoke-virtual {v2, p2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 676
    new-instance p2, Lcom/coui/appcompat/dialog/app/b$a;

    const p3, 0x7f1102d7

    invoke-direct {p2, p1, p3}, Lcom/coui/appcompat/dialog/app/b$a;-><init>(Landroid/content/Context;I)V

    const/4 p3, 0x0

    .line 677
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Z)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    new-instance p3, Lcom/oplus/camera/ui/preview/a/q$6;

    invoke-direct {p3, p0}, Lcom/oplus/camera/ui/preview/a/q$6;-><init>(Lcom/oplus/camera/ui/preview/a/q;)V

    .line 678
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    const p3, 0x7f100681

    new-instance v3, Lcom/oplus/camera/ui/preview/a/q$5;

    invoke-direct {v3, p0}, Lcom/oplus/camera/ui/preview/a/q$5;-><init>(Lcom/oplus/camera/ui/preview/a/q;)V

    .line 688
    invoke-virtual {p2, p3, v3}, Lcom/coui/appcompat/dialog/app/b$a;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    const p3, 0x7f10067f

    .line 699
    invoke-virtual {p2, p3, v1}, Lcom/coui/appcompat/dialog/app/b$a;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    new-instance p3, Lcom/oplus/camera/ui/preview/a/q$4;

    invoke-direct {p3, p0, v2}, Lcom/oplus/camera/ui/preview/a/q$4;-><init>(Lcom/oplus/camera/ui/preview/a/q;Landroid/widget/CheckBox;)V

    .line 700
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(Landroid/content/DialogInterface$OnDismissListener;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    const p3, 0x7f100680

    .line 706
    invoke-virtual {p2, p3}, Lcom/coui/appcompat/dialog/app/b$a;->a(I)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    .line 707
    invoke-virtual {p2, v0}, Lcom/coui/appcompat/dialog/app/b$a;->b(Landroid/view/View;)Lcom/coui/appcompat/dialog/app/b$a;

    move-result-object p2

    .line 708
    invoke-virtual {p2}, Lcom/coui/appcompat/dialog/app/b$a;->a()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    const-string p2, "ImageStickerTools"

    const-string p3, "startDownloadFromDialog mWarningDialog created"

    .line 710
    invoke-static {p2, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, "startDownloadFromDialog activity isFinishing"

    .line 713
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 718
    :cond_3
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->show()V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/preview/a/q$b;Z)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 934
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 935
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->a(Lcom/oplus/camera/ui/preview/a/q$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_uuid"

    invoke-static {v2, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->b(Lcom/oplus/camera/ui/preview/a/q$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_type"

    invoke-static {v2, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->c(Lcom/oplus/camera/ui/preview/a/q$b;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sticker_name"

    invoke-static {v2, v1}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string p2, "0"

    goto :goto_0

    :cond_1
    const-string p2, "1"

    :goto_0
    const-string v1, "sticker_download_result"

    .line 938
    invoke-static {v1, p2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 940
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->d(Lcom/oplus/camera/ui/preview/a/q$b;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sticker_network"

    invoke-static {v1, p2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->e(Lcom/oplus/camera/ui/preview/a/q$b;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-lez p2, :cond_2

    .line 946
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "sticker_download_cost_time"

    .line 945
    invoke-static {v1, p2}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->format(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    :cond_2
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sticker_download"

    invoke-static {p2, v1, v0}, Lcom/oplus/camera/statistics/CameraStatisticsUtil;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    if-eqz p0, :cond_3

    .line 952
    invoke-static {p1}, Lcom/oplus/camera/ui/preview/a/q$b;->a(Lcom/oplus/camera/ui/preview/a/q$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/q;I)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/q;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/q;->d(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/ui/preview/a/q$b;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/ui/preview/a/q$b;Z)V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/oplus/camera/ui/preview/a/q;Z)Z
    .locals 0

    .line 72
    iput-boolean p1, p0, Lcom/oplus/camera/ui/preview/a/q;->n:Z

    return p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    const-string v1, "ImageStickerTools"

    if-eqz p0, :cond_5

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_8

    :cond_0
    const/16 v2, 0x400

    .line 401
    new-array v2, v2, [B

    .line 402
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 403
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 407
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_1

    const/4 p1, 0x0

    .line 412
    invoke-virtual {v3, v2, p1, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 415
    :cond_1
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 422
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 430
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    .line 418
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readStickerStream, ex: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    .line 422
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    .line 424
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 430
    :cond_3
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p0

    .line 432
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-object v2

    :goto_5
    if-eqz v0, :cond_4

    .line 422
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 424
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 430
    :cond_4
    :goto_6
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_7

    :catch_6
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 435
    :goto_7
    throw p0

    :cond_5
    :goto_8
    const-string p0, "readStickerStream, context or stickerUri is null"

    .line 396
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->p:Lcom/oplus/camera/sticker/data/StickerItem;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/oplus/camera/ui/preview/a/q;
    .locals 2

    .line 218
    sget-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    sget-object v1, Lcom/oplus/camera/ui/preview/a/q;->a:Lcom/oplus/camera/ui/preview/a/q;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 220
    new-instance v1, Lcom/oplus/camera/ui/preview/a/q;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/oplus/camera/ui/preview/a/q;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oplus/camera/ui/preview/a/q;->a:Lcom/oplus/camera/ui/preview/a/q;

    .line 223
    :cond_0
    sget-object p0, Lcom/oplus/camera/ui/preview/a/q;->a:Lcom/oplus/camera/ui/preview/a/q;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private b(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/data/StickerCategoryItem;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/ui/h$b;",
            ">;"
        }
    .end annotation

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q$c;->a()V

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    .line 447
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    if-eqz v2, :cond_0

    .line 451
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getIconHighlightFileUri()Ljava/lang/String;

    move-result-object v3

    .line 452
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getIconFileUri()Ljava/lang/String;

    move-result-object v4

    .line 453
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->isCategoryNew()Z

    move-result v5

    .line 455
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_1

    .line 456
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 457
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-virtual {p0, v6, v4}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v7

    :goto_1
    if-nez v4, :cond_2

    .line 461
    iget-object v4, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    const v6, 0x7f08069d

    invoke-virtual {v4, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 464
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 465
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 466
    iget-object v6, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-virtual {p0, v6, v3}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    :cond_3
    if-nez v7, :cond_4

    .line 470
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    const v6, 0x7f0805ef

    invoke-virtual {v3, v6}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 473
    :cond_4
    new-instance v3, Lcom/oplus/camera/sticker/ui/h$b;

    .line 474
    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getReadableId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v7, v4, v6, v5}, Lcom/oplus/camera/sticker/ui/h$b;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V

    .line 475
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v2}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->getReadableId()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v2, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->b(Ljava/lang/String;I)V

    move v1, v4

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private b(I)V
    .locals 0

    .line 171
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/q;->c()V

    .line 173
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    if-eqz p0, :cond_0

    .line 174
    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/v;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/app/Activity;Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "ImageStickerTools"

    const-string p1, "showNetworkWarningDialog, context is null ."

    .line 642
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 647
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/q;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 648
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/a/q;->d(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void

    .line 652
    :cond_1
    iput-object p2, p0, Lcom/oplus/camera/ui/preview/a/q;->p:Lcom/oplus/camera/sticker/data/StickerItem;

    .line 653
    iget-boolean p2, p0, Lcom/oplus/camera/ui/preview/a/q;->n:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;ZZ)V

    return-void
.end method

.method public static b(Lcom/oplus/camera/sticker/data/StickerItem;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 744
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result p0

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/q;->a(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Lcom/oplus/camera/sticker/data/StickerItem;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 760
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItem;->getMaterialType()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method static synthetic c(Lcom/oplus/camera/ui/preview/a/q;)Z
    .locals 0

    .line 72
    iget-boolean p0, p0, Lcom/oplus/camera/ui/preview/a/q;->n:Z

    return p0
.end method

.method private d(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 2

    const-string v0, "ImageStickerTools"

    const-string v1, "startDownloadFromDialog"

    .line 722
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 724
    invoke-virtual {p1, v0}, Lcom/oplus/camera/sticker/data/StickerItem;->setDownloadState(I)V

    .line 726
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    if-eqz v0, :cond_0

    .line 727
    invoke-interface {v0, p1}, Lcom/oplus/camera/ui/preview/a/v;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oplus/camera/sticker/h;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oplus/camera/sticker/h;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    .line 731
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/sticker/data/StickerItem;)V

    return-void
.end method

.method static synthetic d(Lcom/oplus/camera/ui/preview/a/q;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/q;->k()V

    return-void
.end method

.method static synthetic e(Lcom/oplus/camera/ui/preview/a/q;)Lcom/oplus/camera/ui/preview/a/v;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    return-object p0
.end method

.method private e(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 3

    const-string v0, "ImageStickerTools"

    const-string v1, "startDownloadStickerNearme"

    .line 902
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 904
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    .line 908
    :cond_0
    new-instance v0, Lcom/oplus/camera/ui/preview/a/q$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/camera/ui/preview/a/q$b;-><init>(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/ui/preview/a/q$1;)V

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/oplus/camera/ui/preview/a/q$b;->a(Lcom/oplus/camera/ui/preview/a/q$b;J)J

    .line 910
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/q;->l()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$b;->a(Lcom/oplus/camera/ui/preview/a/q$b;I)I

    .line 911
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$b;->a(Lcom/oplus/camera/ui/preview/a/q$b;Ljava/lang/String;)Ljava/lang/String;

    .line 912
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$b;->b(Lcom/oplus/camera/ui/preview/a/q$b;Ljava/lang/String;)Ljava/lang/String;

    .line 913
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$b;->c(Lcom/oplus/camera/ui/preview/a/q$b;Ljava/lang/String;)Ljava/lang/String;

    .line 914
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic f(Lcom/oplus/camera/ui/preview/a/q;)Ljava/util/HashMap;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->k:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1

    .line 72
    sget-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    return-object v0
.end method

.method private h()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "StickerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    .line 125
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method private i()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 136
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 141
    iput-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->f:Landroid/os/HandlerThread;

    :cond_1
    return-void
.end method

.method private j()Z
    .locals 2

    .line 203
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->e:Landroid/content/SharedPreferences;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "sticker_dialog_status"

    .line 204
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private k()V
    .locals 2

    .line 211
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->e:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    .line 212
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "sticker_dialog_status"

    .line 213
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private l()I
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/oplus/util/OplusNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 922
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-static {p0}, Lcom/oplus/util/OplusNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 344
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 345
    :try_start_1
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 348
    invoke-static {p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 355
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-eqz p2, :cond_2

    .line 355
    :try_start_3
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p2, v1

    goto :goto_3

    :catch_2
    move-exception p1

    move-object p2, v1

    .line 351
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p2, :cond_2

    .line 355
    :try_start_5
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 362
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f08060e

    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :goto_3
    if-eqz p2, :cond_3

    .line 355
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 357
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 360
    :cond_3
    :goto_4
    throw p0
.end method

.method public a(Landroid/content/SharedPreferences;)Lcom/oplus/camera/sticker/data/StickerItem;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 313
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSelectedStickerItem, preferences: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageStickerTools"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const-string v1, "getSelectedStickerItem"

    .line 318
    invoke-static {v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    const-string v2, "unselected_uuid"

    const-string v3, "pref_current_sticker_uuid"

    .line 320
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 327
    :cond_1
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    const-string v2, "uuid"

    invoke-static {p0, v2, p1}, Lcom/oplus/camera/sticker/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 330
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 334
    :cond_2
    invoke-static {v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public a()Ljava/lang/Integer;
    .locals 0

    .line 179
    iget p0, p0, Lcom/oplus/camera/ui/preview/a/q;->m:I

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/ui/h$b;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oplus/camera/sticker/data/StickerItem;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/camera/sticker/ui/h$b;

    .line 282
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    iget-wide v3, p0, Lcom/oplus/camera/ui/preview/a/q;->i:J

    iget-object v5, v1, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Lcom/oplus/camera/sticker/g;->a(Landroid/content/Context;JLjava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 286
    iget-object v3, v1, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/oplus/camera/ui/preview/a/q;->m:I

    .line 290
    :cond_1
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 291
    invoke-static {v2}, Lcom/oplus/camera/sticker/g;->a(Landroid/database/Cursor;)Lcom/oplus/camera/sticker/data/StickerItem;

    move-result-object v3

    .line 292
    invoke-virtual {v3}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    .line 294
    iget-object v4, v1, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-static {v4}, Lcom/oplus/camera/sticker/data/StickerCategoryItem;->isMyCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 295
    iget-object v4, v1, Lcom/oplus/camera/sticker/ui/h$b;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/oplus/camera/sticker/data/StickerItem;->setCategoryId(Ljava/lang/String;)V

    .line 298
    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 301
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "querySingleStickerInfo, e: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImageStickerTools"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public a(IZ)V
    .locals 2

    .line 146
    sget-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/q;->l:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 148
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 150
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/q;->l:Z

    if-eqz p2, :cond_1

    .line 154
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    if-eqz p2, :cond_2

    .line 155
    iget-object p2, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    new-instance v1, Lcom/oplus/camera/ui/preview/a/q$1;

    invoke-direct {v1, p0, p1}, Lcom/oplus/camera/ui/preview/a/q$1;-><init>(Lcom/oplus/camera/ui/preview/a/q;I)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/a/q;->b(I)V

    .line 167
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-boolean v0, p0, Lcom/oplus/camera/ui/preview/a/q;->n:Z

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/camera/ui/preview/a/q;->a(Landroid/app/Activity;ZZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ImageStickerTools"

    const-string v1, "initStickerMediator"

    .line 113
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    if-nez v0, :cond_0

    .line 116
    invoke-static {p1}, Lcom/oplus/camera/sticker/h;->a(Landroid/content/Context;)Lcom/oplus/camera/sticker/h;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    .line 117
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/h;->a()V

    .line 118
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->q:Lcom/oplus/camera/sticker/a;

    invoke-virtual {p1, p0}, Lcom/oplus/camera/sticker/h;->a(Lcom/oplus/camera/sticker/a;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/sticker/data/StickerItem;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 528
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    .line 529
    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->a(Ljava/lang/String;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 532
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 533
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/oplus/camera/ui/preview/a/q$c;->a(Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 536
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 540
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/data/StickerItem;->getStickerUUID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/oplus/camera/ui/preview/a/q$c;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-string p0, "ImageStickerTools"

    const-string p1, "refreshSticker, item is null"

    .line 542
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/p;Lcom/oplus/camera/sticker/data/StickerItem;Z)V
    .locals 6

    .line 553
    sget-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 557
    :try_start_0
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object v1

    .line 558
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v2, v1}, Lcom/oplus/camera/ui/preview/a/q$c;->b(Ljava/lang/String;)V

    .line 561
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q$c;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    .line 562
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    .line 563
    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/q$c;->c()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v3}, Lcom/oplus/camera/ui/preview/a/q$c;->d()I

    move-result v3

    if-eqz v1, :cond_1

    .line 567
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 569
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    const-string p0, "ImageStickerTools"

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setImageResource, stickerList.size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-interface {p1, v2, v3, p2, p3}, Lcom/oplus/camera/ui/preview/a/p;->a(Ljava/util/ArrayList;ILcom/oplus/camera/sticker/data/StickerItem;Z)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    if-eqz v1, :cond_2

    .line 575
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->g:Landroid/os/Handler;

    new-instance v2, Lcom/oplus/camera/ui/preview/a/q$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/oplus/camera/ui/preview/a/q$2;-><init>(Lcom/oplus/camera/ui/preview/a/q;Lcom/oplus/camera/sticker/data/StickerItem;Lcom/oplus/camera/ui/preview/a/p;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 596
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method

.method public a(Lcom/oplus/camera/ui/preview/a/v;)V
    .locals 0

    .line 623
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->e:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    .line 196
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 197
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;Lcom/oplus/camera/sticker/data/StickerItem;)Z
    .locals 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectClick, isDownloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", item.needUpdate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 487
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->needUpdate()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageStickerTools"

    .line 486
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    .line 490
    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->needUpdate()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lcom/oplus/camera/sticker/data/StickerItem;->isDownloaded()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    return v2

    .line 491
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 492
    invoke-static {v1}, Lcom/oplus/util/OplusNetworkUtil;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 p1, 0x2

    .line 493
    invoke-virtual {p2, p1}, Lcom/oplus/camera/sticker/data/StickerItem;->setDownloadState(I)V

    .line 495
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    if-eqz p1, :cond_4

    .line 496
    invoke-interface {p1, p2}, Lcom/oplus/camera/ui/preview/a/v;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    .line 499
    :cond_4
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    if-eqz p1, :cond_7

    .line 500
    invoke-virtual {p1, p2, v2}, Lcom/oplus/camera/sticker/h;->a(Lcom/oplus/camera/sticker/data/StickerItem;Z)V

    .line 501
    invoke-direct {p0, p2}, Lcom/oplus/camera/ui/preview/a/q;->e(Lcom/oplus/camera/sticker/data/StickerItem;)V

    goto :goto_2

    .line 503
    :cond_5
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/oplus/util/OplusNetworkUtil;->isMobileDataConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 504
    invoke-direct {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/q;->b(Landroid/app/Activity;Lcom/oplus/camera/sticker/data/StickerItem;)V

    goto :goto_2

    .line 506
    :cond_6
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    const v1, 0x7f10069a

    invoke-static {p1, v1}, Lcom/oplus/camera/util/o;->a(Landroid/content/Context;I)V

    const/16 p1, 0x10

    .line 507
    invoke-virtual {p2, p1}, Lcom/oplus/camera/sticker/data/StickerItem;->setDownloadState(I)V

    .line 509
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->h:Lcom/oplus/camera/ui/preview/a/v;

    if-eqz p0, :cond_7

    .line 510
    invoke-interface {p0, p2}, Lcom/oplus/camera/ui/preview/a/v;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    :cond_7
    :goto_2
    return v0

    :cond_8
    const-string p0, "onEffectClick, item is null!"

    .line 518
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 187
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->e:Landroid/content/SharedPreferences;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 188
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public b()Lcom/oplus/camera/ui/preview/a/q$c;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 547
    sget-object v0, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {p0, p1}, Lcom/oplus/camera/ui/preview/a/q$c;->b(Ljava/lang/String;)V

    .line 549
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public c()V
    .locals 4

    const-string v0, "refreshStickerInfoByCameraId"

    const-string v1, "ImageStickerTools"

    .line 228
    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    if-nez v2, :cond_0

    const-string p0, "refreshStickerInfoByCameraId, mContext is null"

    .line 231
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 236
    :cond_0
    invoke-static {v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/oplus/camera/ui/preview/a/q;->d()Ljava/util/ArrayList;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-direct {p0, v2}, Lcom/oplus/camera/ui/preview/a/q;->b(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/oplus/camera/ui/preview/a/q$c;->a(Ljava/util/ArrayList;)V

    .line 241
    iget-object v2, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v2}, Lcom/oplus/camera/ui/preview/a/q$c;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 244
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/camera/sticker/data/StickerItem;

    .line 245
    invoke-virtual {p0, v2}, Lcom/oplus/camera/ui/preview/a/q;->a(Lcom/oplus/camera/sticker/data/StickerItem;)V

    goto :goto_0

    :cond_1
    const-string p0, "initStickerInfoToMap, databaseList is null"

    .line 248
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 2

    const-string v0, "ImageStickerTools"

    const-string v1, "releaseResource"

    .line 600
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    if-eq p1, v0, :cond_0

    const-string p0, "ImageStickerTools"

    const-string p1, "releaseResource, return"

    .line 603
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 608
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 609
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->q:Lcom/oplus/camera/sticker/a;

    invoke-virtual {p1, v1}, Lcom/oplus/camera/sticker/h;->b(Lcom/oplus/camera/sticker/a;)V

    .line 610
    iget-object p1, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    invoke-virtual {p1}, Lcom/oplus/camera/sticker/h;->b()V

    .line 611
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    .line 614
    :cond_1
    sget-object p1, Lcom/oplus/camera/ui/preview/a/q;->b:Ljava/lang/Object;

    monitor-enter p1

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->d:Lcom/oplus/camera/ui/preview/a/q$c;

    invoke-virtual {v1}, Lcom/oplus/camera/ui/preview/a/q$c;->a()V

    .line 616
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/a/q;->i()V

    const/4 v1, 0x0

    .line 617
    iput-boolean v1, p0, Lcom/oplus/camera/ui/preview/a/q;->l:Z

    .line 618
    sput-object v0, Lcom/oplus/camera/ui/preview/a/q;->a:Lcom/oplus/camera/ui/preview/a/q;

    .line 619
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public d()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/camera/sticker/data/StickerCategoryItem;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/oplus/camera/ui/preview/a/q;->c:Landroid/content/Context;

    iget-wide v2, p0, Lcom/oplus/camera/ui/preview/a/q;->i:J

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/sticker/e;->a(Landroid/content/Context;J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 260
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-static {p0}, Lcom/oplus/camera/sticker/e;->a(Landroid/database/Cursor;)Lcom/oplus/camera/sticker/data/StickerCategoryItem;

    move-result-object v1

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 269
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 271
    :cond_0
    throw v0

    :catch_0
    if-eqz p0, :cond_2

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_2

    .line 269
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0
.end method

.method public e()V
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    invoke-virtual {v0}, Lcom/coui/appcompat/dialog/app/b;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 637
    iput-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->o:Lcom/coui/appcompat/dialog/app/b;

    return-void
.end method

.method public f()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    if-eqz v0, :cond_0

    const-string v0, "ImageStickerTools"

    const-string v1, "requestSticker"

    .line 895
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/q;->j:Lcom/oplus/camera/sticker/h;

    invoke-virtual {p0}, Lcom/oplus/camera/sticker/h;->c()V

    :cond_0
    return-void
.end method
