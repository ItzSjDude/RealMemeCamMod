.class public Lcom/android/ui/menu/CameraWatermarkVisualPreference;
.super Landroidx/preference/Preference;
.source "CameraWatermarkVisualPreference.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/graphics/Bitmap;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Canvas;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/Bitmap;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/graphics/Bitmap;

.field private l:F

.field private m:Z

.field private n:Lcom/oplus/camera/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->d:Z

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e:Z

    .line 48
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    .line 50
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 52
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    .line 53
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 54
    iput v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    .line 55
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    .line 56
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->d:Z

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e:Z

    .line 48
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    .line 50
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 52
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    .line 53
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    .line 54
    iput p3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    .line 55
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    .line 56
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    .line 44
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    const/4 p2, 0x0

    .line 45
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    .line 46
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->d:Z

    const/4 p2, 0x1

    .line 47
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e:Z

    .line 48
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 49
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    .line 50
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 52
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    .line 53
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    .line 54
    iput p3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    .line 55
    iput-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    .line 56
    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    return-void
.end method

.method private a(Lcom/oplus/camera/c$a;)Landroid/graphics/Bitmap;
    .locals 10

    .line 280
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 281
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 282
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->g()I

    move-result v2

    .line 283
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->g()I

    move-result v3

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 291
    :cond_0
    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "bottom_left_corner"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v6, v9

    goto :goto_1

    :sswitch_1
    const-string v6, "oplus_c_watermark_position"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v6, "oplus_left_bottom_watermark_position"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v6, "bottom_right_corner"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_4
    const-string v6, "upper_right_corner"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_5
    const-string v8, "upper_left_corner"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :sswitch_6
    const-string v6, "center"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_7
    const-string v6, "bottom_center"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v6, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v7

    :goto_1
    packed-switch v6, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_2

    .line 314
    :pswitch_0
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v9, v9, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 309
    :pswitch_1
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 305
    :pswitch_2
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v9, v3, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 301
    :pswitch_3
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v9, v9, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    .line 295
    :pswitch_4
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0, v2, v9, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_2
    return-object p0

    .line 288
    :cond_2
    :goto_3
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, p0}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x5e398717 -> :sswitch_7
        -0x514d33ab -> :sswitch_6
        -0x4d552290 -> :sswitch_5
        -0x3d4101ab -> :sswitch_4
        -0x3b46bc94 -> :sswitch_3
        -0xfc5108a -> :sswitch_2
        0x1d8bbbf6 -> :sswitch_1
        0x26581979 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    return-object p0
.end method

.method private a(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V

    return-void
.end method

.method private a(Lcom/oplus/camera/ComboPreferences;)V
    .locals 3

    .line 100
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080231

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, v1, v0, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 103
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 107
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/c;->a(Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    .line 108
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 111
    :cond_1
    iget-boolean p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    const/4 v0, 0x1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 112
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    .line 117
    :goto_1
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f070d45

    sget v2, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, v1, v2}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p1

    .line 119
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    iput p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    .line 121
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    if-nez p1, :cond_4

    .line 122
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 123
    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)Landroid/graphics/Bitmap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private b(Lcom/oplus/camera/ComboPreferences;)Lcom/oplus/camera/c$a;
    .locals 4

    .line 128
    new-instance v0, Lcom/oplus/camera/c$e;

    invoke-direct {v0}, Lcom/oplus/camera/c$e;-><init>()V

    const/4 v1, 0x0

    .line 129
    iput v1, v0, Lcom/oplus/camera/c$e;->f:I

    .line 130
    iget-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->k:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 133
    :goto_0
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {v2, v1, v3}, Landroid/util/Size;-><init>(II)V

    iput-object v2, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 134
    invoke-static {}, Lcom/oplus/camera/c;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/c$e;->c:Ljava/lang/String;

    const/4 v1, 0x1

    .line 135
    iput-boolean v1, v0, Lcom/oplus/camera/c$e;->h:Z

    .line 136
    iget-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    iput-boolean v1, v0, Lcom/oplus/camera/c$e;->i:Z

    .line 137
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/camera/q;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/c$e;->d:Ljava/lang/String;

    .line 138
    iget-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e:Z

    iput-boolean v1, v0, Lcom/oplus/camera/c$e;->j:Z

    .line 139
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0, p1, v0}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$e;)Lcom/oplus/camera/c$a;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 82
    iget-boolean v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->d:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$j;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$j;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$j;-><init>(II)V

    :cond_0
    const v2, 0x7f070d58

    .line 91
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$j;->setMarginStart(I)V

    .line 92
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$j;->setMarginEnd(I)V

    const v2, 0x7f070d56

    .line 93
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, v1, Landroidx/recyclerview/widget/RecyclerView$j;->bottomMargin:I

    .line 94
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_1
    return-void
.end method

.method private b(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->d(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V
    .locals 9

    .line 325
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 329
    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "bottom_left_corner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_1
    const-string v4, "bottom_right_corner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v8

    goto :goto_1

    :sswitch_2
    const-string v4, "upper_right_corner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "upper_left_corner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    goto :goto_1

    :sswitch_4
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v3, :cond_5

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    if-eq v3, v6, :cond_2

    if-eq v3, v5, :cond_1

    goto/16 :goto_2

    .line 350
    :cond_1
    iget-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 351
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, v4

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 350
    invoke-virtual {p2, v0, v1, p1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 346
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    sub-float/2addr v1, v3

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 345
    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 341
    :cond_3
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 336
    :cond_4
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    int-to-float p2, v0

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 337
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    sub-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 336
    invoke-virtual {p1, v3, p2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 331
    :cond_5
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    sub-int/2addr v0, p2

    sub-int/2addr v0, v1

    int-to-float p2, v0

    iget v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    int-to-float v1, v2

    div-float/2addr v1, v4

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, p2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_4
        -0x4d552290 -> :sswitch_3
        -0x3d4101ab -> :sswitch_2
        -0x3b46bc94 -> :sswitch_1
        0x26581979 -> :sswitch_0
    .end sparse-switch
.end method

.method private d(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V
    .locals 8

    .line 360
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 362
    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 363
    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 364
    iget-object v4, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 365
    iget-object v5, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 367
    iget-object v6, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v7, "bottom_left_corner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    goto :goto_1

    :sswitch_1
    const-string v7, "oplus_c_watermark_position"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x7

    goto :goto_1

    :sswitch_2
    const-string v7, "oplus_left_bottom_watermark_position"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x6

    goto :goto_1

    :sswitch_3
    const-string v7, "bottom_right_corner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :sswitch_4
    const-string v7, "upper_right_corner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_5
    const-string v7, "upper_left_corner"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_6
    const-string v7, "center"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x4

    goto :goto_1

    :sswitch_7
    const-string v7, "bottom_center"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v6, -0x1

    :goto_1
    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    .line 403
    :pswitch_0
    iget-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    sub-int/2addr v3, v1

    int-to-float v1, v3

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 397
    :pswitch_1
    iget-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v0, v7

    int-to-float v2, v3

    iget v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v2, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 389
    :pswitch_2
    iget-boolean p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    if-eqz p2, :cond_1

    .line 390
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int/2addr v3, p2

    sub-int/2addr v3, v5

    int-to-float p2, v3

    div-float/2addr p2, v7

    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p2, v1

    goto :goto_2

    .line 391
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    div-float/2addr p2, v7

    .line 393
    :goto_2
    iget-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    div-float/2addr v0, v7

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0, p2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 384
    :pswitch_3
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    add-int/2addr p2, v4

    int-to-float p2, p2

    int-to-float v2, v3

    iget v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    sub-float/2addr v2, v3

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v2, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 379
    :pswitch_4
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    add-int/2addr p2, v4

    int-to-float p2, p2

    iget v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v2, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 374
    :pswitch_5
    iget-object v5, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    int-to-float p2, v2

    int-to-float v0, v3

    iget v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    sub-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, p2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 369
    :pswitch_6
    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    invoke-virtual {p2}, Lcom/oplus/camera/c$a;->h()I

    move-result p2

    sub-int/2addr v2, p2

    sub-int/2addr v2, v4

    sub-int/2addr v2, v0

    int-to-float p2, v2

    iget v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    int-to-float v1, v1

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, p2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5e398717 -> :sswitch_7
        -0x514d33ab -> :sswitch_6
        -0x4d552290 -> :sswitch_5
        -0x3d4101ab -> :sswitch_4
        -0x3b46bc94 -> :sswitch_3
        -0xfc5108a -> :sswitch_2
        0x1d8bbbf6 -> :sswitch_1
        0x26581979 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "pref_watermark_display_info_key"

    invoke-virtual {p2, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 150
    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    .line 152
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Lcom/oplus/camera/ad;

    invoke-direct {v0, p1, p2, v2}, Lcom/oplus/camera/ad;-><init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->n:Lcom/oplus/camera/c;

    .line 156
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(Lcom/oplus/camera/ComboPreferences;)V

    .line 157
    invoke-direct {p0, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b(Lcom/oplus/camera/ComboPreferences;)Lcom/oplus/camera/c$a;

    move-result-object p1

    const-string v0, "pref_watermark_position_key"

    const-string v1, "bottom_left_corner"

    .line 159
    invoke-virtual {p2, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->h:Ljava/lang/String;

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updatePreview, watermarkHold: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CameraWatermarkVisualPreference"

    invoke-static {v0, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 166
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 170
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(Lcom/oplus/camera/c$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 174
    :cond_2
    iget-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->m:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/oplus/camera/util/Util;->al()Z

    move-result v1

    if-nez v1, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070d45

    sget v3, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v1, v2, v3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->j:Landroid/graphics/Bitmap;

    .line 178
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->l:F

    .line 181
    :cond_3
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a(Landroid/graphics/Bitmap;Lcom/oplus/camera/c$a;)V

    .line 184
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 185
    iput-boolean p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    goto :goto_0

    .line 187
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 188
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 190
    :cond_5
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/ui/menu/CameraWatermarkVisualPreference$1;

    invoke-direct {v0, p0, p2}, Lcom/android/ui/menu/CameraWatermarkVisualPreference$1;-><init>(Lcom/android/ui/menu/CameraWatermarkVisualPreference;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 199
    :goto_0
    iput-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    return-void
.end method

.method public a(Landroidx/preference/l;)V
    .locals 2

    const v0, 0x7f0901e5

    .line 72
    invoke-virtual {p1, v0}, Landroidx/preference/l;->a(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    .line 73
    invoke-direct {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b()V

    .line 75
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    :cond_0
    return-void
.end method

.method public a(ZLcom/oplus/camera/ComboPreferences;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateMakeupPreview, mDisplayBitmap: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CameraWatermarkVisualPreference"

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 210
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    if-nez p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f080230

    const/high16 v3, 0x3f800000    # 1.0f

    sget v4, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, v2, v3, v4}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 213
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 216
    :cond_1
    new-instance p1, Lcom/oplus/camera/c$e;

    invoke-direct {p1}, Lcom/oplus/camera/c$e;-><init>()V

    .line 217
    new-instance v2, Landroid/util/Size;

    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 218
    iput-boolean v1, p1, Lcom/oplus/camera/c$e;->h:Z

    .line 220
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;Landroid/content/SharedPreferences;)Lcom/oplus/camera/c$a;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "updateMakeupPreview, hold is null"

    .line 223
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_2
    iget-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v2}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 230
    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 231
    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->K()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 232
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    .line 233
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 234
    iget-object v0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->g:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->d()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->i:Landroid/graphics/Bitmap;

    .line 235
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->e()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    sub-int/2addr v4, p1

    int-to-float p1, v4

    iget-object v4, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->f:Landroid/graphics/Paint;

    .line 234
    invoke-virtual {v0, v2, v3, p1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 236
    iput-object p2, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    .line 239
    :cond_3
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    if-nez p1, :cond_4

    .line 240
    iput-boolean v1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->c:Z

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_5

    .line 243
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->a:Landroid/widget/ImageView;

    new-instance p2, Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;

    invoke-direct {p2, p0}, Lcom/android/ui/menu/CameraWatermarkVisualPreference$2;-><init>(Lcom/android/ui/menu/CameraWatermarkVisualPreference;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/ui/menu/CameraWatermarkVisualPreference;->e:Z

    return-void
.end method
