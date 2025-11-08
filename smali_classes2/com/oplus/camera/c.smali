.class public Lcom/oplus/camera/c;
.super Ljava/lang/Object;
.source "BaseSloganUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/c$c;,
        Lcom/oplus/camera/c$b;,
        Lcom/oplus/camera/c$d;,
        Lcom/oplus/camera/c$a;,
        Lcom/oplus/camera/c$e;
    }
.end annotation


# static fields
.field private static final Z:[Ljava/lang/String;

.field protected static a:Landroid/graphics/Typeface;

.field protected static b:Landroid/graphics/Typeface;

.field protected static c:Landroid/graphics/Typeface;

.field protected static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:I

.field protected D:I

.field protected E:I

.field protected F:Ljava/lang/String;

.field protected G:Ljava/lang/String;

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Ljava/lang/String;

.field protected K:Ljava/lang/String;

.field protected L:Ljava/lang/String;

.field protected M:Ljava/lang/String;

.field protected volatile N:I

.field protected volatile O:I

.field protected volatile P:J

.field protected Q:J

.field protected R:Lcom/oplus/camera/c$e;

.field private S:Lcom/oplus/camera/c$a;

.field private T:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private U:Ljava/lang/String;

.field private V:Landroid/graphics/Paint;

.field private W:Ljava/lang/String;

.field private X:Z

.field private Y:Z

.field protected final e:Landroid/os/ConditionVariable;

.field protected f:Z

.field protected g:I

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Landroid/app/Activity;

.field protected l:Lcom/oplus/camera/ComboPreferences;

.field protected m:Lcom/oplus/camera/jni/FormatConverter;

.field protected n:Landroid/content/res/Resources;

.field protected o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected p:Lcom/oplus/camera/jni/OplusSloganJNI;

.field protected q:Landroid/util/Size;

.field protected r:I

.field protected s:F

.field protected t:F

.field protected u:F

.field protected v:Landroid/graphics/Bitmap;

.field protected w:Landroid/graphics/Bitmap;

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "150W"

    .line 198
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/c;->Z:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;I)V
    .locals 5

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/oplus/camera/c;->f:Z

    .line 149
    iput v0, p0, Lcom/oplus/camera/c;->g:I

    .line 150
    iput v0, p0, Lcom/oplus/camera/c;->h:I

    const-string v1, ""

    .line 151
    iput-object v1, p0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    const/4 v2, 0x0

    .line 152
    iput-object v2, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    .line 153
    iput-object v2, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    .line 154
    iput-object v2, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    .line 155
    iput-object v2, p0, Lcom/oplus/camera/c;->m:Lcom/oplus/camera/jni/FormatConverter;

    .line 156
    iput-object v2, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    .line 157
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/c;->o:Ljava/util/Set;

    .line 158
    iput-object v2, p0, Lcom/oplus/camera/c;->p:Lcom/oplus/camera/jni/OplusSloganJNI;

    .line 159
    iput-object v2, p0, Lcom/oplus/camera/c;->q:Landroid/util/Size;

    .line 161
    iput v0, p0, Lcom/oplus/camera/c;->r:I

    const/4 v3, 0x0

    .line 162
    iput v3, p0, Lcom/oplus/camera/c;->s:F

    .line 163
    iput v3, p0, Lcom/oplus/camera/c;->t:F

    .line 164
    iput v3, p0, Lcom/oplus/camera/c;->u:F

    .line 165
    iput-object v2, p0, Lcom/oplus/camera/c;->v:Landroid/graphics/Bitmap;

    .line 166
    iput-object v2, p0, Lcom/oplus/camera/c;->w:Landroid/graphics/Bitmap;

    .line 168
    iput-boolean v0, p0, Lcom/oplus/camera/c;->x:Z

    .line 169
    iput-boolean v0, p0, Lcom/oplus/camera/c;->y:Z

    .line 170
    iput-boolean v0, p0, Lcom/oplus/camera/c;->z:Z

    .line 171
    iput-boolean v0, p0, Lcom/oplus/camera/c;->A:Z

    .line 172
    iput-boolean v0, p0, Lcom/oplus/camera/c;->B:Z

    .line 175
    iput v0, p0, Lcom/oplus/camera/c;->C:I

    .line 176
    iput v0, p0, Lcom/oplus/camera/c;->D:I

    .line 177
    iput v0, p0, Lcom/oplus/camera/c;->E:I

    .line 178
    iput-object v1, p0, Lcom/oplus/camera/c;->F:Ljava/lang/String;

    .line 179
    iput-object v1, p0, Lcom/oplus/camera/c;->G:Ljava/lang/String;

    .line 180
    iput-object v1, p0, Lcom/oplus/camera/c;->H:Ljava/lang/String;

    .line 181
    iput-object v1, p0, Lcom/oplus/camera/c;->I:Ljava/lang/String;

    .line 182
    iput-object v2, p0, Lcom/oplus/camera/c;->J:Ljava/lang/String;

    .line 183
    iput-object v1, p0, Lcom/oplus/camera/c;->K:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/oplus/camera/c;->M:Ljava/lang/String;

    .line 186
    iput v0, p0, Lcom/oplus/camera/c;->N:I

    .line 187
    iput v0, p0, Lcom/oplus/camera/c;->O:I

    const-wide/16 v3, 0x0

    .line 188
    iput-wide v3, p0, Lcom/oplus/camera/c;->P:J

    .line 189
    iput-wide v3, p0, Lcom/oplus/camera/c;->Q:J

    .line 190
    new-instance v3, Lcom/oplus/camera/c$e;

    invoke-direct {v3}, Lcom/oplus/camera/c$e;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/c;->R:Lcom/oplus/camera/c$e;

    .line 191
    new-instance v3, Lcom/oplus/camera/c$a;

    invoke-direct {v3}, Lcom/oplus/camera/c$a;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    .line 192
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oplus/camera/c;->T:Ljava/util/HashMap;

    .line 193
    iput-object v1, p0, Lcom/oplus/camera/c;->U:Ljava/lang/String;

    .line 194
    iput-object v2, p0, Lcom/oplus/camera/c;->V:Landroid/graphics/Paint;

    .line 195
    iput-object v1, p0, Lcom/oplus/camera/c;->W:Ljava/lang/String;

    .line 196
    iput-boolean v0, p0, Lcom/oplus/camera/c;->X:Z

    .line 197
    iput-boolean v0, p0, Lcom/oplus/camera/c;->Y:Z

    .line 238
    iput-object p1, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    .line 239
    iput-object p2, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    .line 240
    iput p3, p0, Lcom/oplus/camera/c;->D:I

    .line 241
    invoke-static {}, Lcom/oplus/camera/util/Util;->v()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    const-string p1, "ro.hw.phone.color"

    .line 243
    invoke-static {p1}, Lcom/oplus/camera/util/Util;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->U:Ljava/lang/String;

    .line 245
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SloganUtil, mMarketName: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", mColorFlag: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/c;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSloganUtil"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object p1, p0, Lcom/oplus/camera/c;->U:Ljava/lang/String;

    const-string p3, "00FFF002"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string p3, "Lamborghini"

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " Lamborghini"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/oplus/camera/c;->k()V

    .line 255
    iget-object p1, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    .line 256
    iget-object p1, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    const p3, 0x7f070aa8

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/c;->s:F

    .line 257
    iget-object p1, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    const p3, 0x7f070aa9

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/c;->t:F

    .line 258
    iget-object p1, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    const p3, 0x7f070aaa

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/camera/c;->u:F

    .line 259
    iget-object p1, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    const p3, 0x7f06050d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/camera/c;->r:I

    .line 260
    new-instance p1, Lcom/oplus/camera/jni/FormatConverter;

    invoke-direct {p1}, Lcom/oplus/camera/jni/FormatConverter;-><init>()V

    iput-object p1, p0, Lcom/oplus/camera/c;->m:Lcom/oplus/camera/jni/FormatConverter;

    .line 262
    iget-object p1, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-static {p1}, Lcom/oplus/os/OplusUsbEnvironment;->getInternalSdDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 265
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".SLOGAN"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    .line 267
    new-instance p1, Ljava/io/File;

    iget-object p3, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 270
    invoke-direct {p0}, Lcom/oplus/camera/c;->n()V

    .line 272
    iget-object p1, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/oplus/camera/q/a;->f(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 273
    iput-object v2, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    const-string p0, "file directory is not exist"

    .line 275
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 281
    :cond_2
    invoke-direct {p0}, Lcom/oplus/camera/c;->n()V

    .line 282
    iput-object v2, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    const-string p0, "interDir is null"

    .line 284
    invoke-static {p2, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;IF)F
    .locals 1

    .line 1844
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p2

    return p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)F
    .locals 0

    .line 57
    invoke-static {p0, p1, p2}, Lcom/oplus/camera/c;->b(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)F
    .locals 4

    .line 1985
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 1986
    aget-object v2, v0, v1

    const-string v3, "pref_watermark_size_key"

    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    .line 1991
    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p3, :cond_0

    const p1, 0x7f070d51

    goto :goto_0

    :cond_0
    const p1, 0x7f070d53

    goto :goto_0

    .line 1997
    :cond_1
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const p1, 0x7f070d50

    goto :goto_0

    :cond_2
    const p1, 0x7f070d4f

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    const p1, 0x7f070d52

    goto :goto_0

    :cond_4
    const p1, 0x7f070d54

    .line 2011
    :goto_0
    sget p3, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p2

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/oplus/camera/c$e;I)F
    .locals 2

    .line 778
    iget-boolean p0, p1, Lcom/oplus/camera/c$e;->h:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    .line 779
    iget-object p0, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    iget-object v1, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 780
    iget-object p0, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    goto :goto_0

    .line 782
    :cond_0
    iget-object p0, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    mul-float/2addr p0, v0

    int-to-float p1, p2

    div-float v0, p0, p1

    .line 786
    :cond_1
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result p0

    if-eqz p0, :cond_2

    const/high16 p0, 0x43f00000    # 480.0f

    mul-float/2addr v0, p0

    const/high16 p0, 0x43dc0000    # 440.0f

    div-float/2addr v0, p0

    :cond_2
    return v0
.end method

.method private static a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 1654
    sget-object v0, Lcom/oplus/camera/c;->d:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 1655
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/camera/c;->d:Ljava/util/Map;

    .line 1658
    :cond_0
    sget-object v0, Lcom/oplus/camera/c;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 1661
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p3, p1, v0}, Lcom/oplus/camera/util/Util;->b(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1662
    sget-object p0, Lcom/oplus/camera/c;->d:Ljava/util/Map;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 4

    .line 2055
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2056
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->OUTER:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v1, v3, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 2057
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f06006a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method protected static a()Landroid/graphics/Typeface;
    .locals 2

    .line 722
    sget-object v0, Lcom/oplus/camera/c;->a:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 727
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 850"

    .line 728
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 729
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/c;->a:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 731
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/c;->a:Landroid/graphics/Typeface;

    const-string v0, "BaseSloganUtil"

    const-string v1, "getMarketFontTypeface, create special typeface fail"

    .line 733
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_0
    sget-object v0, Lcom/oplus/camera/c;->a:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static a(Landroid/util/Size;)Landroid/util/Size;
    .locals 2

    if-eqz p0, :cond_0

    .line 987
    new-instance v0, Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/c$e;Landroid/content/SharedPreferences;)Lcom/oplus/camera/c$a;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1505
    new-instance v2, Lcom/oplus/camera/c$a;

    invoke-direct {v2}, Lcom/oplus/camera/c$a;-><init>()V

    .line 1506
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1507
    sget v4, Lcom/oplus/camera/util/Util;->a:I

    const v5, 0x7f080230

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v0, v5, v6, v4}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;IFI)I

    move-result v4

    .line 1509
    iget-object v5, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    .line 1511
    iget-boolean v6, v1, Lcom/oplus/camera/c$e;->h:Z

    if-nez v6, :cond_0

    .line 1512
    iget-object v6, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-static {v6}, Lcom/oplus/camera/c;->b(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    iput-object v6, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 1515
    :cond_0
    invoke-static {v0, v1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;I)F

    move-result v4

    .line 1516
    move-object/from16 v6, p2

    check-cast v6, Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, v4, v1, v6}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLcom/oplus/camera/c$e;Lcom/oplus/camera/ComboPreferences;)Ljava/util/Map;

    move-result-object v6

    const-string v7, "key_watermark_part_a_line"

    .line 1518
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oplus/camera/c$c;

    const-string v8, "key_watermark_part_b_line"

    .line 1519
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/camera/c$c;

    const-string v9, "key_watermark_part_name_line"

    .line 1520
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/camera/c$c;

    const-string v10, "key_watermark_part_c_line"

    .line 1521
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/c$c;

    const-string v10, "BaseSloganUtil"

    if-eqz v7, :cond_c

    if-eqz v8, :cond_c

    if-eqz v6, :cond_c

    if-nez v9, :cond_1

    goto/16 :goto_3

    .line 1529
    :cond_1
    invoke-static {v9}, Lcom/oplus/camera/c$c;->a(Lcom/oplus/camera/c$c;)Landroid/graphics/Bitmap;

    move-result-object v9

    const v11, 0x7f070d37

    .line 1530
    invoke-static {v0, v11, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v11

    float-to-int v11, v11

    const v12, 0x7f070d35

    .line 1531
    invoke-static {v0, v12, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v12

    float-to-int v12, v12

    const v13, 0x7f070d2f

    .line 1532
    invoke-static {v0, v13, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v13

    float-to-int v13, v13

    const v14, 0x7f070d30

    .line 1533
    invoke-static {v0, v14, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v14

    float-to-int v14, v14

    const v15, 0x7f070d31

    .line 1534
    invoke-static {v0, v15, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v15

    float-to-int v15, v15

    move-object/from16 p2, v10

    .line 1535
    iget-object v10, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-static {v0, v1, v10}, Lcom/oplus/camera/c;->b(Landroid/content/Context;Lcom/oplus/camera/c$e;I)I

    move-result v10

    move/from16 v16, v5

    const v5, 0x7f070d33

    .line 1536
    invoke-static {v0, v5, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v0

    float-to-int v0, v0

    .line 1538
    iget-boolean v5, v1, Lcom/oplus/camera/c$e;->h:Z

    if-nez v5, :cond_2

    int-to-float v5, v13

    const/high16 v13, 0x40400000    # 3.0f

    sub-float/2addr v5, v13

    float-to-int v5, v5

    int-to-float v14, v14

    sub-float/2addr v14, v13

    float-to-int v14, v14

    int-to-float v15, v15

    sub-float/2addr v15, v13

    float-to-int v15, v15

    move v13, v5

    :cond_2
    mul-int/lit8 v5, v11, 0x2

    sub-int/2addr v10, v5

    .line 1554
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->d()I

    move-result v17

    add-int v5, v5, v17

    .line 1555
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v17

    add-int v5, v5, v17

    .line 1557
    rem-int/lit8 v17, v10, 0x2

    if-eqz v17, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 1561
    :cond_3
    rem-int/lit8 v17, v5, 0x2

    if-eqz v17, :cond_4

    add-int/lit8 v5, v5, 0x1

    :cond_4
    move/from16 v17, v4

    .line 1565
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v5, v4}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1566
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v18, v12

    .line 1567
    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    move/from16 v19, v11

    const/4 v11, 0x3

    move-object/from16 v20, v2

    const/4 v2, 0x0

    invoke-direct {v12, v2, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v1, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/4 v11, 0x0

    .line 1569
    invoke-virtual {v1, v9, v11, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1570
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    add-int/2addr v3, v9

    .line 1571
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v9

    .line 1572
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->g()I

    move-result v12

    sub-int/2addr v3, v12

    sub-int/2addr v3, v13

    int-to-float v3, v3

    .line 1573
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v7

    .line 1571
    invoke-virtual {v1, v9, v11, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1575
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    if-le v3, v0, :cond_8

    .line 1576
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 1577
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v7

    const-string v9, ""

    invoke-static {v3, v7, v0, v9}, Lcom/oplus/camera/c;->a(Ljava/lang/String;Landroid/graphics/Paint;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1578
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1580
    invoke-static {v6}, Lcom/oplus/camera/c$c;->b(Lcom/oplus/camera/c$c;)Z

    move-result v11

    const-string v12, "Bobbi Brown"

    if-eqz v11, :cond_6

    .line 1581
    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v7, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_5
    const/4 v11, 0x1

    goto :goto_0

    :cond_6
    move v11, v2

    .line 1582
    :goto_0
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v11, :cond_7

    const/4 v11, -0x1

    if-eq v11, v3, :cond_7

    .line 1586
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v11, v3, v13, v9}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1588
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1589
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    rsub-int/lit8 v0, v0, 0xb

    invoke-virtual {v9, v2, v0, v12}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1591
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1592
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1595
    :cond_7
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v2

    .line 1596
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    sub-int v3, v10, v3

    int-to-float v3, v3

    .line 1597
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    sub-int v9, v5, v9

    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->g()I

    move-result v11

    sub-int/2addr v9, v11

    sub-int/2addr v9, v15

    sub-int/2addr v9, v14

    int-to-float v9, v9

    .line 1599
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v8

    .line 1595
    invoke-virtual {v1, v2, v3, v9, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    int-to-float v2, v10

    .line 1601
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float v3, v2, v3

    .line 1602
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->g()I

    move-result v8

    sub-int v8, v5, v8

    sub-int/2addr v8, v15

    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    .line 1603
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v9

    .line 1600
    invoke-virtual {v1, v0, v3, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1605
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    sub-float/2addr v2, v0

    .line 1606
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->g()I

    move-result v0

    sub-int v0, v5, v0

    sub-int/2addr v0, v15

    int-to-float v0, v0

    .line 1607
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v3

    .line 1604
    invoke-virtual {v1, v7, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 1609
    :cond_8
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1610
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->c()I

    move-result v2

    sub-int v2, v10, v2

    int-to-float v2, v2

    .line 1611
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->g()I

    move-result v7

    sub-int/2addr v3, v7

    sub-int/2addr v3, v15

    sub-int/2addr v3, v14

    .line 1612
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    .line 1613
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v7

    .line 1609
    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1614
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->c()I

    move-result v2

    sub-int v2, v10, v2

    int-to-float v2, v2

    .line 1616
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->g()I

    move-result v3

    sub-int v3, v5, v3

    sub-int/2addr v3, v15

    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    .line 1617
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v7

    .line 1614
    invoke-virtual {v1, v0, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    move-object/from16 v0, v20

    .line 1620
    invoke-virtual {v0, v4}, Lcom/oplus/camera/c$a;->a(Landroid/graphics/Bitmap;)V

    move/from16 v1, v19

    .line 1621
    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->b(I)V

    .line 1622
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->d()I

    move-result v1

    sub-int v12, v18, v1

    invoke-virtual {v0, v12}, Lcom/oplus/camera/c$a;->c(I)V

    move-object/from16 v1, p1

    .line 1623
    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->a(Lcom/oplus/camera/c$e;)V

    .line 1625
    iget-boolean v2, v1, Lcom/oplus/camera/c$e;->h:Z

    if-nez v2, :cond_b

    move/from16 v2, v16

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 1629
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_9

    add-int/lit8 v4, v2, 0x1

    goto :goto_2

    :cond_9
    move v4, v2

    :goto_2
    if-eqz v3, :cond_a

    add-int/lit8 v2, v2, 0x1

    .line 1637
    :cond_a
    iget-object v3, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oplus/camera/c$a;->g(I)V

    .line 1638
    iget-object v1, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->h(I)V

    .line 1639
    invoke-virtual {v0, v4}, Lcom/oplus/camera/c$a;->i(I)V

    .line 1640
    invoke-virtual {v0, v2}, Lcom/oplus/camera/c$a;->j(I)V

    .line 1643
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createWatermarkMakeupBitmapHold, imageWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", imageHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1644
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->k()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1645
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->l()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1646
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->m()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", watermarkWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", watermarkHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scale: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, p2

    .line 1643
    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_c
    :goto_3
    move-object v2, v10

    const-string v0, "createWatermarkMakeupBitmapHold, hold is null"

    .line 1524
    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/oplus/camera/c$e;F)Lcom/oplus/camera/c$b;
    .locals 7

    .line 1723
    new-instance v0, Lcom/oplus/camera/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/c$b;-><init>(Lcom/oplus/camera/c$1;)V

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr p2, v1

    .line 1731
    iget-object v1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "red_velvet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "orange_crush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "groomed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_4
    const-string v2, "snow"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_5
    const-string v2, "first_love"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_6
    const-string v2, "sparkling_sea"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_7
    const-string v2, "peach_pink"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_8
    const-string v2, "smokey"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_9
    const-string v2, "violet_shimmer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_a
    const-string v2, "rosy_nude"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x9

    goto :goto_1

    :sswitch_b
    const-string v2, "midnight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_c
    const-string v2, "unique_eyes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const v2, 0x7f080500

    const v5, 0x7f1000d8

    const-string v6, "#8EA5D1"

    packed-switch v1, :pswitch_data_0

    .line 1828
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1829
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1831
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    invoke-static {p0, p2, p1, v2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_2
    move-object v2, v3

    :goto_3
    move v3, v4

    goto/16 :goto_4

    :pswitch_0
    const-string v1, "#BEA890"

    .line 1821
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000db

    .line 1822
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1823
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804ff

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_1
    const-string v1, "#8DA0E4"

    .line 1814
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000c3

    .line 1815
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1816
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804f6

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_4

    .line 1806
    :pswitch_2
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1807
    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1809
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    invoke-static {p0, p2, p1, v2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :pswitch_3
    const-string v1, "#D9BBB2"

    .line 1798
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000d2

    .line 1799
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1801
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v3, 0x7f0804fd

    invoke-static {p0, p2, p1, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_3

    :pswitch_4
    const-string v1, "#93B6C6"

    .line 1792
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000c7

    .line 1793
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1794
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804f8

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_5
    const-string v1, "#9F8B8C"

    .line 1784
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000d4

    .line 1785
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1787
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v3, 0x7f0804fe

    invoke-static {p0, p2, p1, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_6
    const-string v1, "#A993C1"

    .line 1776
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000df

    .line 1777
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1779
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v3, 0x7f080503

    invoke-static {p0, p2, p1, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_3

    :pswitch_7
    const-string v1, "#A186AB"

    .line 1769
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000c9

    .line 1770
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1771
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804f9

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_4

    :pswitch_8
    const-string v1, "#EBB7A2"

    .line 1762
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000c5

    .line 1763
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1764
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804f7

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4

    :pswitch_9
    const-string v1, "#D7766B"

    .line 1755
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000d0

    .line 1756
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1757
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804fc

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4

    :pswitch_a
    const-string v1, "#E4A39A"

    .line 1748
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000ce

    .line 1749
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1750
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804fb

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4

    :pswitch_b
    const-string v1, "#EEB475"

    .line 1741
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000cc

    .line 1742
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1743
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v4, 0x7f0804fa

    invoke-static {p0, p2, p1, v4}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_4

    :pswitch_c
    const-string v1, "#D0A59E"

    .line 1733
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1000dd

    .line 1734
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1736
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const v3, 0x7f080502

    invoke-static {p0, p2, p1, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLjava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_3

    .line 1836
    :goto_4
    iput v1, v0, Lcom/oplus/camera/c$b;->b:I

    .line 1837
    iput-object v2, v0, Lcom/oplus/camera/c$b;->a:Ljava/lang/String;

    .line 1838
    iput-boolean v3, v0, Lcom/oplus/camera/c$b;->d:Z

    .line 1839
    iput-object p0, v0, Lcom/oplus/camera/c$b;->c:Landroid/graphics/Bitmap;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72785bf0 -> :sswitch_c
        -0x61cd9530 -> :sswitch_b
        -0x578e9e1c -> :sswitch_a
        -0x521a3ebf -> :sswitch_9
        -0x358e9b16 -> :sswitch_8
        -0x189c917c -> :sswitch_7
        -0xa7a899d -> :sswitch_6
        -0x999245f -> :sswitch_5
        0x35f183 -> :sswitch_4
        0x5b68803 -> :sswitch_3
        0x117a99e1 -> :sswitch_2
        0x3b4d5d6a -> :sswitch_1
        0x4c37ae56 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
    .end packed-switch
.end method

.method protected static a(Landroid/content/Context;FLcom/oplus/camera/ComboPreferences;)Lcom/oplus/camera/c$d;
    .locals 5

    .line 873
    new-instance v0, Lcom/oplus/camera/c$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/c$d;-><init>(Lcom/oplus/camera/c$1;)V

    .line 874
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d4a

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->a:I

    .line 876
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d49

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->b:I

    .line 878
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d45

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->c:I

    .line 880
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d46

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->d:I

    .line 882
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d4e

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->e:I

    .line 884
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    const v2, 0x7f070d2e

    invoke-static {p0, v2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Lcom/oplus/camera/c$d;->g:I

    .line 887
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 888
    aget-object v3, v1, v2

    const-string v4, "pref_watermark_size_key"

    invoke-virtual {p2, v4, v3}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x2

    .line 891
    aget-object v3, v1, v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const p2, 0x7f070d4c

    .line 892
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Lcom/oplus/camera/c$d;->f:I

    goto :goto_0

    .line 894
    :cond_0
    aget-object v1, v1, v2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f070d4b

    .line 895
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Lcom/oplus/camera/c$d;->f:I

    goto :goto_0

    :cond_1
    const p2, 0x7f070d4d

    .line 898
    sget v1, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p2, v1}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    iput p0, v0, Lcom/oplus/camera/c$d;->f:I

    :goto_0
    return-object v0
.end method

.method private static a(Ljava/lang/String;Landroid/graphics/Paint;ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 918
    invoke-static {p1, p0, p2}, Lcom/oplus/camera/c;->a(Landroid/graphics/Paint;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 922
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 926
    :goto_0
    invoke-static {p0}, Lcom/oplus/camera/c;->d(Ljava/lang/String;)I

    move-result v2

    const-string v3, " "

    .line 929
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 930
    invoke-virtual {p1, p0, v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    add-int/lit8 v4, v2, 0x1

    .line 933
    invoke-virtual {p1, p0, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v4

    float-to-int v4, v4

    sub-int v5, p2, v1

    sub-int/2addr v5, v3

    .line 935
    div-int v3, v5, v4

    add-int/2addr v3, v2

    const-string v2, ""

    if-lez v3, :cond_2

    .line 936
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object v6, v2

    .line 938
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v3, v7, :cond_3

    .line 939
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 942
    :cond_3
    invoke-virtual {v6, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    if-eqz p3, :cond_4

    .line 945
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    int-to-float v7, p2

    .line 949
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    sub-float/2addr v7, p1

    int-to-float p1, v4

    div-float/2addr v7, p1

    float-to-int p1, v7

    add-int/2addr v3, p1

    if-lez v3, :cond_5

    .line 952
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    if-eqz p3, :cond_6

    .line 955
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_6
    move-object p0, v2

    .line 958
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSplitString, inputString: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endSymbol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", endSymbolWidth: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", remainingWidth: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", contentSize: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", limit: "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", deviationSize: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", outputString: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSloganUtil"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object p0
.end method

.method private static a(Landroid/content/Context;FLcom/oplus/camera/c$e;Lcom/oplus/camera/ComboPreferences;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "F",
            "Lcom/oplus/camera/c$e;",
            "Lcom/oplus/camera/ComboPreferences;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/c$c;",
            ">;"
        }
    .end annotation

    const-string v0, "BaseSloganUtil"

    const-string v1, "createWatermarkMakeupText"

    .line 1678
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    invoke-static {p0, p2, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;F)Lcom/oplus/camera/c$b;

    move-result-object p2

    .line 1682
    new-instance v1, Lcom/oplus/camera/c$c;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v1, p0, p3, v2}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)V

    .line 1683
    iget-object v3, p2, Lcom/oplus/camera/c$b;->c:Landroid/graphics/Bitmap;

    invoke-static {v1, v3}, Lcom/oplus/camera/c$c;->a(Lcom/oplus/camera/c$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1685
    new-instance v3, Lcom/oplus/camera/c$c;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p3, v2, v4}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)V

    .line 1686
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v5

    const v6, 0x7f070d34

    invoke-static {p0, v6, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1687
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v5

    iget v6, p2, Lcom/oplus/camera/c$b;->b:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1688
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v5

    invoke-static {}, Lcom/oplus/camera/c;->o()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1689
    iget-object v5, p2, Lcom/oplus/camera/c$b;->a:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/oplus/camera/c$c;->b(Ljava/lang/String;)V

    .line 1691
    new-instance v5, Lcom/oplus/camera/c$c;

    invoke-direct {v5, p0, p3, v2, v4}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)V

    .line 1692
    invoke-virtual {v5}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v6

    const v7, 0x7f070d32

    invoke-static {p0, v7, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1693
    invoke-virtual {v5}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v6

    const v7, 0x7f060072

    invoke-virtual {p0, v7}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1694
    invoke-virtual {v5}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v6

    invoke-static {}, Lcom/oplus/camera/c;->p()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1695
    invoke-static {}, Lcom/oplus/camera/util/Util;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/camera/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oplus/camera/c$c;->b(Ljava/lang/String;)V

    .line 1697
    new-instance v6, Lcom/oplus/camera/c$c;

    invoke-direct {v6, p0, p3, v2, v4}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)V

    .line 1698
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object p3

    const v2, 0x7f070d36

    invoke-static {p0, v2, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;IF)F

    move-result p1

    invoke-virtual {p3, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1699
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p0, v7}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1700
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object p1

    invoke-static {}, Lcom/oplus/camera/c;->o()Landroid/graphics/Typeface;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1703
    iget-boolean p1, p2, Lcom/oplus/camera/c$b;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1704
    invoke-static {v6, p1}, Lcom/oplus/camera/c$c;->a(Lcom/oplus/camera/c$c;Z)Z

    const p1, 0x7f1000e0

    .line 1705
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/oplus/camera/c$c;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const p1, 0x7f1000e1

    .line 1707
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/oplus/camera/c$c;->b(Ljava/lang/String;)V

    .line 1710
    :goto_0
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "key_watermark_part_a_line"

    .line 1712
    invoke-interface {p0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_watermark_part_b_line"

    .line 1713
    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_watermark_part_c_line"

    .line 1714
    invoke-interface {p0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "key_watermark_part_name_line"

    .line 1715
    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "createWatermarkMakeupText, X"

    .line 1717
    invoke-static {v0, p1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FLcom/oplus/camera/c$e;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/camera/ComboPreferences;",
            "F",
            "Lcom/oplus/camera/c$e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/camera/c$c;",
            ">;"
        }
    .end annotation

    .line 1884
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "pref_watermark_display_info_key"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "pref_watermark_author_key"

    const-string v2, ""

    .line 1887
    invoke-virtual {p1, v1, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseSloganUtil"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 1889
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    if-eqz v1, :cond_1

    .line 1890
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const-string v4, "com.oplus.device_series"

    .line 1891
    invoke-static {v4}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    const-string p0, "createWatermarkText, chooseDisplayValues is null or empty"

    .line 1892
    invoke-static {v2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    .line 1897
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1898
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1899
    invoke-static {}, Lcom/oplus/camera/util/Util;->v()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oplus/camera/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    .line 1904
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1905
    aget-object v8, v4, v7

    invoke-interface {v0, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 1906
    aget-object v9, v4, v3

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x2

    .line 1907
    aget-object v4, v4, v10

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Lcom/oplus/camera/c$e;->j:Z

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    move v0, v7

    move v8, v0

    move v9, v8

    :goto_0
    if-eqz v1, :cond_5

    .line 1911
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1912
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v0, :cond_6

    .line 1916
    iget-object v1, p3, Lcom/oplus/camera/c$e;->d:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v9, :cond_7

    .line 1920
    iget-object v1, p3, Lcom/oplus/camera/c$e;->c:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1923
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createWatermarkText, isWatermarkDevice: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isWatermarkTime: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isWatermarkLocation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1929
    invoke-static {p0, p1, p2, v7}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)F

    move-result v1

    .line 1931
    new-instance v2, Lcom/oplus/camera/c$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)V

    const-string v4, "key_watermark_part_a_line"

    .line 1932
    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v4, 0x3be56042    # 0.007f

    if-nez v8, :cond_c

    .line 1935
    invoke-virtual {v2, v1}, Lcom/oplus/camera/c$c;->a(F)V

    .line 1936
    invoke-static {}, Lcom/oplus/camera/c;->o()Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Typeface;)V

    .line 1938
    iget-boolean p1, p3, Lcom/oplus/camera/c$e;->h:Z

    if-nez p1, :cond_8

    .line 1939
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1942
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1943
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    .line 1944
    invoke-virtual {v2, p2}, Lcom/oplus/camera/c$c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 1948
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_b

    const p1, 0x7f100509

    .line 1949
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oplus/camera/c$c;->a(Ljava/lang/String;)V

    :cond_b
    return-object v0

    .line 1955
    :cond_c
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 1956
    invoke-virtual {v2, v6}, Lcom/oplus/camera/c$c;->a(Ljava/lang/String;)V

    .line 1959
    :cond_d
    invoke-static {p0, p1, p2, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/c$c;->a(F)V

    .line 1960
    invoke-static {}, Lcom/oplus/camera/c;->a()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Typeface;)V

    .line 1961
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v2

    const v3, 0x3cf5c28f    # 0.03f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1963
    new-instance v2, Lcom/oplus/camera/c$c;

    invoke-direct {v2, p0, p1, p2}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)V

    .line 1964
    invoke-virtual {v2, v1}, Lcom/oplus/camera/c$c;->a(F)V

    .line 1965
    invoke-static {}, Lcom/oplus/camera/c;->o()Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Typeface;)V

    .line 1967
    iget-boolean p0, p3, Lcom/oplus/camera/c$e;->h:Z

    if-nez p0, :cond_e

    .line 1968
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setLetterSpacing(F)V

    .line 1974
    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_f
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_10

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1975
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_f

    .line 1976
    invoke-virtual {v2, p1}, Lcom/oplus/camera/c$c;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_10
    const-string p0, "key_watermark_part_b_line"

    .line 1980
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 973
    iget-object v0, p0, Lcom/oplus/camera/c;->R:Lcom/oplus/camera/c$e;

    iget-object v0, v0, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 977
    :cond_0
    iget v0, p0, Lcom/oplus/camera/c;->N:I

    if-eqz v0, :cond_2

    const/16 v0, 0xb4

    iget v1, p0, Lcom/oplus/camera/c;->N:I

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 981
    :cond_1
    iput-object p1, p0, Lcom/oplus/camera/c;->w:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 979
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/oplus/camera/c;->v:Landroid/graphics/Bitmap;

    :cond_3
    :goto_1
    return-void
.end method

.method private static a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$c;I)V
    .locals 3

    .line 1852
    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->c()I

    move-result v0

    if-lt p2, v0, :cond_0

    return-void

    :cond_0
    const-string v0, "pref_watermark_author_key"

    const-string v1, ""

    .line 1858
    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1860
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    move p0, v0

    .line 1868
    :goto_0
    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    if-eq v0, p0, :cond_2

    .line 1870
    invoke-virtual {p1, v0}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v1

    sub-int/2addr p2, v1

    int-to-float p2, p2

    .line 1871
    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->h()F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1872
    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->i()F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    int-to-float p2, p2

    .line 1873
    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->j()F

    move-result v1

    sub-float/2addr p2, v1

    float-to-int p2, p2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    :cond_3
    invoke-virtual {p1, p0}, Lcom/oplus/camera/c$c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v1

    const-string v2, "..."

    invoke-static {v0, v1, p2, v2}, Lcom/oplus/camera/c;->a(Ljava/lang/String;Landroid/graphics/Paint;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1879
    invoke-virtual {p1, p2, p0}, Lcom/oplus/camera/c$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)Z
    .locals 2

    .line 2081
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "pref_watermark_display_info_key"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2084
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2090
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    .line 2091
    aget-object p0, p0, v0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2085
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isWatermarkLocationOpen, chooseDisplayValues is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BaseSloganUtil"

    invoke-static {p1, p0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroid/graphics/Bitmap;ZZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    const/4 v7, 0x0

    const-string v8, "BaseSloganUtil"

    if-eqz v2, :cond_6

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 542
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 543
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    mul-int v1, v11, v12

    int-to-float v3, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    float-to-int v9, v3

    add-int v3, v9, v1

    .line 548
    new-array v15, v3, [B

    .line 549
    new-array v10, v1, [B

    .line 551
    iget-object v1, v0, Lcom/oplus/camera/c;->m:Lcom/oplus/camera/jni/FormatConverter;

    const/4 v13, -0x1

    if-eqz v1, :cond_1

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v15

    move-object v4, v10

    move/from16 v6, p3

    .line 552
    invoke-virtual/range {v1 .. v6}, Lcom/oplus/camera/jni/FormatConverter;->argbToNv21(Landroid/graphics/Bitmap;[B[BIZ)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v13

    .line 555
    :goto_0
    array-length v2, v10

    invoke-static {v10, v7, v15, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateYuvBuffer, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isPremultiplied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v1, :cond_2

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateYuvBuffer fail, yuvData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v7

    .line 566
    :cond_2
    iget-object v1, v0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {v1, v15}, Lcom/oplus/camera/c$a;->a([B)V

    :cond_3
    const/4 v1, 0x1

    .line 573
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_4

    if-eqz p2, :cond_4

    .line 575
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/c;->l()Lcom/oplus/camera/jni/OplusSloganJNI;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 576
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/c;->l()Lcom/oplus/camera/jni/OplusSloganJNI;

    move-result-object v9

    array-length v13, v15

    iget-object v14, v0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    move-object v10, v15

    invoke-virtual/range {v9 .. v14}, Lcom/oplus/camera/jni/OplusSloganJNI;->setSloganBuffer([BIIILjava/lang/String;)I

    move-result v13

    .line 579
    :cond_4
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v2

    if-ne v3, v2, :cond_5

    .line 580
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    invoke-static {v0, v1, v15}, Lcom/oplus/camera/q/a;->a(Ljava/lang/String;Ljava/lang/String;[B)Z

    move-result v1

    .line 584
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateYuvFile, setBufferResult: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 537
    :cond_6
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateYuvFile fail, bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    return v7
.end method

.method private static a(Landroid/graphics/Paint;Ljava/lang/String;I)Z
    .locals 0

    .line 969
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    int-to-float p1, p2

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, " "

    .line 310
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 312
    array-length v2, v0

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v0, v0, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    .line 314
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    return v3

    :cond_0
    return v1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSloganInfoChange, currentAuthor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWatermarkAuthor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/c;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", currentTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWatermarkTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/c;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", VERSION: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.0.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mSloganVersion: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/c;->K:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mMarketName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mWatermarkMarketName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/c;->I:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mEnterType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/c;->D:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSloganEnterType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/c;->C:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentOrientation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/c;->N:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSloganOrientation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/camera/c;->E:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWatermarkSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oplus/camera/c;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseSloganUtil"

    invoke-static {v2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v0, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f030013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 673
    aget-object v3, v0, v2

    invoke-interface {p4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    .line 674
    aget-object v0, v0, v4

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p4

    .line 675
    iget-object v0, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    const-string v4, "pref_watermark_size_key"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v4, p0, Lcom/oplus/camera/c;->F:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/c;->G:Ljava/lang/String;

    .line 678
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    if-nez v3, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/c;->H:Ljava/lang/String;

    .line 679
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p4, :cond_3

    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    iget-object p2, p0, Lcom/oplus/camera/c;->I:Ljava/lang/String;

    .line 680
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oplus/camera/c;->K:Ljava/lang/String;

    .line 681
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oplus/camera/c;->D:I

    iget p2, p0, Lcom/oplus/camera/c;->C:I

    if-ne p1, p2, :cond_3

    iget p1, p0, Lcom/oplus/camera/c;->N:I

    iget p2, p0, Lcom/oplus/camera/c;->E:I

    if-ne p1, p2, :cond_3

    iget-object p0, p0, Lcom/oplus/camera/c;->J:Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 684
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method private static b(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)F
    .locals 4

    .line 2015
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2016
    aget-object v2, v0, v1

    const-string v3, "pref_watermark_size_key"

    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    .line 2021
    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f070d29

    goto :goto_0

    .line 2023
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f070d28

    goto :goto_0

    :cond_1
    const p1, 0x7f070d2c

    .line 2029
    :goto_0
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p0

    mul-float/2addr p0, p2

    return p0
.end method

.method private static b(Landroid/content/Context;Lcom/oplus/camera/c$e;I)I
    .locals 0

    .line 1669
    iget-boolean p0, p1, Lcom/oplus/camera/c$e;->h:Z

    if-nez p0, :cond_0

    .line 1670
    iget-object p0, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 2051
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/util/Size;)Landroid/util/Size;
    .locals 3

    .line 1489
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccc    # 1.0999999f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1490
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ea3d70b    # 0.32000002f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v1, p0

    float-to-int p0, v1

    .line 1492
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1496
    :cond_0
    rem-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    add-int/lit8 p0, p0, 0x1

    .line 1500
    :cond_1
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static b(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;)V
    .locals 3

    .line 2095
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 2096
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "pref_watermark_display_info_key"

    invoke-virtual {p1, v1, v0}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x2

    .line 2103
    aget-object p0, p0, v2

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2104
    invoke-virtual {p1}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 2105
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDir, yuvFileDir: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSloganUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 604
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "deleteDir, dir is not directory"

    .line 607
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 612
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p0, "deleteDir, fileList is null"

    .line 615
    invoke-static {v1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 620
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 621
    aget-object v2, p1, v0

    if-eqz v2, :cond_5

    .line 623
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 625
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 626
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const-string v4, "_"

    .line 627
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 629
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    const/4 v4, 0x1

    .line 630
    aget-object v3, v3, v4

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteDir, timeStamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mYuvDoneTimeStamp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/oplus/camera/c;->Q:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", filePath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    :try_start_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 639
    :cond_3
    iget-wide v4, p0, Lcom/oplus/camera/c;->Q:J

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    const-wide/32 v5, 0x493e0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    iget-object v3, p0, Lcom/oplus/camera/c;->o:Ljava/util/Set;

    .line 640
    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 641
    invoke-static {v2}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;)Z

    goto :goto_2

    .line 638
    :cond_4
    :goto_1
    invoke-static {v2}, Lcom/oplus/camera/q/a;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 644
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 650
    :cond_6
    invoke-direct {p0}, Lcom/oplus/camera/c;->m()V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)Landroid/graphics/Bitmap;
    .locals 4

    .line 2033
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2034
    aget-object v2, v0, v1

    const-string v3, "pref_watermark_size_key"

    invoke-virtual {p1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x2

    .line 2038
    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const p1, 0x7f080455

    .line 2039
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 2040
    :cond_0
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080454

    .line 2041
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    const p1, 0x7f080456

    .line 2044
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p0, p1, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "[\u4e00-\u9fa5]"

    .line 712
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 713
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    .line 714
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeChineseOfString, repickStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSloganUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 906
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 907
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "center"

    .line 1848
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 4

    .line 853
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyy.MM.dd HH:mm"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 854
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 856
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 857
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 860
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "GT Exp. Master Edition"

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    const-string v1, "GT Master Edition"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "GT Master"

    .line 294
    iput-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x0

    .line 297
    :goto_0
    sget-object v1, Lcom/oplus/camera/c;->Z:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 298
    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/oplus/camera/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v0

    if-nez v0, :cond_4

    .line 304
    iget-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    const-string v1, "realme "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private l()Lcom/oplus/camera/jni/OplusSloganJNI;
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/oplus/camera/c;->p:Lcom/oplus/camera/jni/OplusSloganJNI;

    if-nez v0, :cond_0

    .line 591
    new-instance v0, Lcom/oplus/camera/jni/OplusSloganJNI;

    invoke-direct {v0}, Lcom/oplus/camera/jni/OplusSloganJNI;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/c;->p:Lcom/oplus/camera/jni/OplusSloganJNI;

    .line 594
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/c;->p:Lcom/oplus/camera/jni/OplusSloganJNI;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 654
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oplus/camera/c;->A:Z

    if-eqz v0, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/oplus/camera/c;->l()Lcom/oplus/camera/jni/OplusSloganJNI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    invoke-direct {p0}, Lcom/oplus/camera/c;->l()Lcom/oplus/camera/jni/OplusSloganJNI;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/camera/jni/OplusSloganJNI;->sloganFileDeleteAll()I

    move-result p0

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteDir, JNI sloganFileDeleteAll result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BaseSloganUtil"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    const-string v0, "BaseSloganUtil"

    const-string v1, "clearAllPrefValue"

    .line 688
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 690
    iput-object v0, p0, Lcom/oplus/camera/c;->F:Ljava/lang/String;

    .line 691
    iput-object v0, p0, Lcom/oplus/camera/c;->G:Ljava/lang/String;

    .line 692
    iput-object v0, p0, Lcom/oplus/camera/c;->H:Ljava/lang/String;

    .line 693
    iput-object v0, p0, Lcom/oplus/camera/c;->I:Ljava/lang/String;

    .line 694
    iput-object v0, p0, Lcom/oplus/camera/c;->K:Ljava/lang/String;

    const/4 v0, 0x0

    .line 695
    iput v0, p0, Lcom/oplus/camera/c;->C:I

    .line 696
    iput v0, p0, Lcom/oplus/camera/c;->E:I

    return-void
.end method

.method private static o()Landroid/graphics/Typeface;
    .locals 2

    .line 740
    sget-object v0, Lcom/oplus/camera/c;->b:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 745
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 700"

    .line 746
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 747
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/c;->b:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 749
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/c;->b:Landroid/graphics/Typeface;

    const-string v0, "BaseSloganUtil"

    const-string v1, "getNormalFontTypeface, create special typeface fail"

    .line 751
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    :goto_0
    sget-object v0, Lcom/oplus/camera/c;->b:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private static p()Landroid/graphics/Typeface;
    .locals 2

    .line 758
    sget-object v0, Lcom/oplus/camera/c;->c:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    return-object v0

    .line 763
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Typeface$Builder;

    const-string v1, "/system/fonts/SysSans-En-Regular.ttf"

    invoke-direct {v0, v1}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/lang/String;)V

    const-string v1, "\'wght\' 1000"

    .line 764
    invoke-virtual {v0, v1}, Landroid/graphics/Typeface$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/Typeface$Builder;

    .line 765
    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/oplus/camera/c;->c:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 767
    :catch_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    sput-object v0, Lcom/oplus/camera/c;->c:Landroid/graphics/Typeface;

    const-string v0, "BaseSloganUtil"

    const-string v1, "getMakeupFontTypeface, create special typeface fail"

    .line 769
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :goto_0
    sget-object v0, Lcom/oplus/camera/c;->c:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .line 864
    iget-object p0, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    const-string v0, "pref_watermark_author_key"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWatermarkAuthor, author: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSloganUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;F)Landroid/graphics/Bitmap;
    .locals 3

    .line 2062
    invoke-static {}, Lcom/oplus/camera/util/Util;->t()Z

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    if-eqz v0, :cond_0

    const p0, 0x7f080499

    div-float/2addr p2, v1

    .line 2063
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p0, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 2065
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/c;->U:Ljava/lang/String;

    const-string v2, "00FFF006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/oplus/camera/c;->z:Z

    if-eqz p0, :cond_1

    const p0, 0x7f0805e8

    const v0, 0x4031c6fc

    div-float/2addr p2, v0

    .line 2066
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p0, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "com.oplus.device_series"

    .line 2068
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result v0

    const v2, 0x7f08049a

    if-nez v0, :cond_2

    div-float/2addr p2, v1

    .line 2069
    sget p0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, v2, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v0, 0x1

    .line 2071
    invoke-static {p0}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigIntValue(Ljava/lang/String;)I

    move-result p0

    if-ne v0, p0, :cond_3

    const p0, 0x7f080498

    div-float/2addr p2, v1

    .line 2072
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p0, p2, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    div-float/2addr p2, v1

    .line 2075
    sget p0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, v2, p2, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;IFI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Lcom/oplus/camera/c$a;
    .locals 3

    .line 799
    iget-object v0, p0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVideoWatermarkBitmap, orientation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseSloganUtil"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0xb4

    if-ne v1, p1, :cond_1

    goto :goto_0

    .line 810
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/c;->w:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1}, Lcom/oplus/camera/c$a;->a(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 808
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    iget-object v0, p0, Lcom/oplus/camera/c;->v:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/oplus/camera/c$a;->a(Landroid/graphics/Bitmap;)V

    .line 813
    :goto_1
    iget-object p0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$e;)Lcom/oplus/camera/c$a;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1046
    new-instance v4, Lcom/oplus/camera/c$a;

    invoke-direct {v4}, Lcom/oplus/camera/c$a;-><init>()V

    .line 1047
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 1048
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v6

    .line 1049
    new-instance v13, Landroid/graphics/Paint;

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Landroid/graphics/Paint;-><init>(I)V

    .line 1050
    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v7, 0xff

    .line 1051
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v7, "bottom_left_corner"

    const-string v8, "pref_watermark_position_key"

    .line 1052
    invoke-virtual {v2, v8, v7}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/c;->h()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, v0, Lcom/oplus/camera/c;->X:Z

    if-eqz v8, :cond_0

    iget-boolean v8, v0, Lcom/oplus/camera/c;->Y:Z

    if-nez v8, :cond_0

    const-string v8, "off"

    const-string v9, "pref_mirror_key"

    .line 1057
    invoke-virtual {v2, v9, v8}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move/from16 v16, v8

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    :goto_0
    const v8, 0x7f080231

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1060
    sget v10, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {v1, v8, v9, v10}, Lcom/oplus/camera/util/Util;->c(Landroid/content/Context;IFI)I

    move-result v8

    invoke-static {v1, v3, v8}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;I)F

    move-result v8

    .line 1062
    invoke-static {v1, v2, v8}, Lcom/oplus/camera/c;->c(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1063
    invoke-static {v11}, Lcom/oplus/camera/c;->b(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1064
    invoke-virtual {v0, v1, v8}, Lcom/oplus/camera/c;->a(Landroid/content/Context;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1066
    iget-boolean v9, v3, Lcom/oplus/camera/c$e;->i:Z

    if-eqz v9, :cond_1

    iget-boolean v9, v3, Lcom/oplus/camera/c$e;->h:Z

    if-eqz v9, :cond_2

    .line 1067
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v14, v14, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1070
    :cond_2
    invoke-static {v1, v8, v2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;FLcom/oplus/camera/ComboPreferences;)Lcom/oplus/camera/c$d;

    move-result-object v9

    .line 1071
    invoke-static {v1, v2, v8, v3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FLcom/oplus/camera/c$e;)Ljava/util/Map;

    move-result-object v14

    const-string v12, "key_watermark_part_a_line"

    .line 1072
    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oplus/camera/c$c;

    move-object/from16 v18, v10

    const-string v10, "key_watermark_part_b_line"

    .line 1073
    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oplus/camera/c$c;

    move-object/from16 v19, v6

    const-string v6, "key_watermark_part_author_line"

    .line 1074
    invoke-interface {v14, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oplus/camera/c$c;

    .line 1080
    iget-object v14, v3, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v14}, Landroid/util/Size;->getWidth()I

    move-result v14

    move-object/from16 v20, v5

    .line 1081
    iget-object v5, v3, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/16 v21, 0x0

    move/from16 p0, v5

    const-string v5, "BaseSloganUtil"

    if-nez v12, :cond_3

    const-string v0, "createWatermarkBitmapHold, watermark need one element at least"

    .line 1084
    invoke-static {v5, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v21

    :cond_3
    move-object/from16 v22, v7

    .line 1089
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    invoke-virtual {v13, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1091
    iget-boolean v7, v3, Lcom/oplus/camera/c$e;->h:Z

    if-eqz v7, :cond_4

    const v7, 0x7f06009a

    .line 1092
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    const v7, 0x7f0600a2

    .line 1094
    invoke-virtual {v1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v13, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1108
    :goto_1
    invoke-static {v15}, Lcom/oplus/camera/c;->e(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, v3, Lcom/oplus/camera/c$e;->i:Z

    if-eqz v1, :cond_5

    .line 1109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v7, v9, Lcom/oplus/camera/c$d;->g:I

    add-int/2addr v1, v7

    move-object/from16 v23, v13

    goto :goto_2

    :cond_5
    move-object/from16 v23, v13

    const/4 v1, 0x0

    :goto_2
    const/4 v7, 0x0

    add-int v13, v7, v1

    .line 1114
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->c()I

    move-result v7

    add-int/2addr v7, v13

    if-eqz v6, :cond_6

    .line 1117
    invoke-virtual {v6}, Lcom/oplus/camera/c$c;->c()I

    move-result v24

    add-int v7, v7, v24

    .line 1118
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    add-int v7, v7, v24

    :cond_6
    move-object/from16 v24, v6

    .line 1121
    iget v6, v9, Lcom/oplus/camera/c$d;->a:I

    move-object/from16 v25, v4

    const/4 v4, 0x2

    mul-int/2addr v6, v4

    sub-int v6, v14, v6

    sub-int/2addr v6, v1

    .line 1122
    invoke-static {v2, v12, v6}, Lcom/oplus/camera/c;->a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$c;I)V

    if-eqz v10, :cond_8

    .line 1124
    invoke-virtual {v10}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 1125
    invoke-static {v2, v10, v6}, Lcom/oplus/camera/c;->a(Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$c;I)V

    .line 1126
    invoke-virtual {v10}, Lcom/oplus/camera/c$c;->c()I

    move-result v2

    add-int/2addr v2, v13

    .line 1128
    invoke-virtual {v10}, Lcom/oplus/camera/c$c;->e()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1129
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    add-int/2addr v2, v6

    .line 1132
    :cond_7
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->d()I

    move-result v6

    invoke-virtual {v10}, Lcom/oplus/camera/c$c;->d()I

    move-result v26

    add-int v6, v6, v26

    iget v4, v9, Lcom/oplus/camera/c$d;->b:I

    add-int/2addr v6, v4

    goto :goto_3

    .line 1134
    :cond_8
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->d()I

    move-result v6

    move v2, v13

    .line 1137
    :goto_3
    invoke-static {v15}, Lcom/oplus/camera/c;->e(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1138
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    add-int/2addr v4, v6

    move-object/from16 v26, v10

    iget v10, v9, Lcom/oplus/camera/c$d;->d:I

    add-int/2addr v4, v10

    goto :goto_4

    :cond_9
    move-object/from16 v26, v10

    move v4, v6

    .line 1143
    :goto_4
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    move-object/from16 v27, v11

    .line 1144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1146
    rem-int/lit8 v11, v10, 0x2

    if-eqz v11, :cond_a

    add-int/lit8 v10, v10, 0x1

    :cond_a
    move v11, v10

    .line 1150
    rem-int/lit8 v10, v4, 0x2

    if-eqz v10, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 1154
    :cond_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v13

    const-string v13, "createWatermarkBitmapHold, watermarkWidth: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", watermarkHeight: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", watermarkPosition: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", scale: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", pictureSize: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", watermarkTextHeight: "

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v11, :cond_c

    return-object v21

    .line 1163
    :cond_c
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v11, v4, v5}, Lcom/oplus/camera/util/Util;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1164
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1165
    new-instance v8, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x3

    const/4 v3, 0x0

    invoke-direct {v8, v3, v10}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v13, v8}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 1172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    move-object/from16 v8, v25

    invoke-virtual {v8, v3}, Lcom/oplus/camera/c$a;->d(I)V

    .line 1173
    iget v3, v9, Lcom/oplus/camera/c$d;->c:I

    invoke-virtual {v8, v3}, Lcom/oplus/camera/c$a;->e(I)V

    .line 1174
    iget v3, v9, Lcom/oplus/camera/c$d;->e:I

    invoke-virtual {v8, v3}, Lcom/oplus/camera/c$a;->f(I)V

    .line 1176
    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v10, "bottom_right_corner"

    move-object/from16 v21, v5

    const-string v5, "upper_left_corner"

    sparse-switch v3, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    move-object/from16 v3, v22

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x1

    goto :goto_6

    :sswitch_1
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x2

    goto :goto_6

    :sswitch_2
    const-string v3, "upper_right_corner"

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x3

    goto :goto_6

    :sswitch_3
    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    goto :goto_6

    :cond_d
    :goto_5
    const/4 v3, -0x1

    :goto_6
    const/high16 v22, 0x40000000    # 2.0f

    if-eqz v3, :cond_1f

    move-object/from16 v25, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_1e

    const/4 v8, 0x2

    if-eq v3, v8, :cond_15

    const/4 v5, 0x3

    if-eq v3, v5, :cond_14

    .line 1388
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int v1, v11, v1

    int-to-float v1, v1

    div-float v1, v1, v22

    const/4 v3, 0x0

    int-to-float v5, v3

    move-object/from16 v6, v20

    invoke-virtual {v13, v0, v1, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1389
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/2addr v0, v3

    .line 1390
    iget v1, v9, Lcom/oplus/camera/c$d;->d:I

    add-int/2addr v0, v1

    .line 1391
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->d()I

    move-result v1

    add-int/2addr v0, v1

    sub-int v1, v11, v7

    .line 1393
    div-int/lit8 v5, v1, 0x2

    move v7, v5

    move v5, v3

    .line 1395
    :goto_7
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_f

    .line 1396
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    int-to-float v10, v7

    .line 1397
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->g()I

    move-result v15

    sub-int v15, v0, v15

    int-to-float v15, v15

    .line 1398
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v3

    .line 1396
    invoke-virtual {v13, v8, v10, v15, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1399
    invoke-virtual {v12, v5}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v3

    add-int/2addr v7, v3

    .line 1401
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v8, 0x1

    sub-int/2addr v3, v8

    if-eq v5, v3, :cond_e

    int-to-float v3, v7

    .line 1402
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->h()F

    move-result v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1404
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    div-float v7, v7, v22

    sub-float v8, v3, v7

    int-to-float v7, v0

    .line 1405
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->d()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float v10, v7, v10

    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->k()F

    move-result v15

    div-float v15, v15, v22

    sub-float/2addr v10, v15

    .line 1406
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->j()F

    move-result v15

    div-float v15, v15, v22

    sub-float v15, v3, v15

    move-object/from16 v20, v9

    .line 1407
    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    sub-float/2addr v7, v9

    invoke-virtual {v12}, Lcom/oplus/camera/c$c;->k()F

    move-result v9

    div-float v9, v9, v22

    add-float v28, v7, v9

    move-object v7, v13

    move-object/from16 v9, v25

    move/from16 v25, v4

    move-object/from16 v4, v20

    move-object/from16 v20, v9

    move v9, v10

    move/from16 v29, v14

    move-object/from16 v14, v18

    move/from16 v18, v2

    move-object/from16 v2, v26

    move v10, v15

    move/from16 v26, v11

    move-object/from16 v15, v27

    move/from16 v11, v28

    move-object/from16 p2, v12

    move-object/from16 v12, v23

    .line 1404
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1411
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->i()F

    move-result v7

    add-float/2addr v3, v7

    float-to-int v3, v3

    move v7, v3

    goto :goto_8

    :cond_e
    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object/from16 v14, v18

    move-object/from16 v20, v25

    move-object/from16 v15, v27

    move/from16 v18, v2

    move/from16 v25, v4

    move-object v4, v9

    move-object/from16 v2, v26

    move/from16 v26, v11

    :goto_8
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v12, p2

    move-object v9, v4

    move-object/from16 v27, v15

    move/from16 v4, v25

    move/from16 v11, v26

    const/4 v3, 0x0

    move-object/from16 v26, v2

    move/from16 v2, v18

    move-object/from16 v25, v20

    move-object/from16 v18, v14

    move/from16 v14, v29

    goto/16 :goto_7

    :cond_f
    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object/from16 v14, v18

    move-object/from16 v20, v25

    move-object/from16 v15, v27

    move/from16 v18, v2

    move/from16 v25, v4

    move-object v4, v9

    move-object/from16 v2, v26

    move/from16 v26, v11

    if-eqz v24, :cond_10

    int-to-float v1, v1

    div-float v1, v1, v22

    .line 1417
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    int-to-float v5, v0

    .line 1418
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float v7, v5, v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float/2addr v7, v8

    .line 1416
    invoke-virtual {v13, v15, v3, v7, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1421
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v1

    .line 1422
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v5, v7

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v5, v7

    move-object/from16 v12, v19

    .line 1420
    invoke-virtual {v13, v14, v3, v5, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1424
    invoke-virtual/range {v24 .. v24}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->c()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1426
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 1427
    invoke-virtual/range {v24 .. v24}, Lcom/oplus/camera/c$c;->g()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 1428
    invoke-virtual/range {v24 .. v24}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v7

    .line 1424
    invoke-virtual {v13, v3, v1, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_10
    move-object/from16 v12, v19

    :goto_9
    if-eqz v2, :cond_13

    .line 1432
    iget v1, v4, Lcom/oplus/camera/c$d;->b:I

    add-int/2addr v0, v1

    .line 1433
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v1

    add-int/2addr v0, v1

    .line 1435
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->e()Z

    move-result v1

    if-eqz v1, :cond_11

    sub-int v11, v26, v18

    int-to-float v1, v11

    div-float v1, v1, v22

    int-to-float v3, v0

    .line 1438
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v22

    sub-float v4, v3, v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v22

    sub-float/2addr v4, v5

    .line 1436
    invoke-virtual {v13, v15, v1, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1442
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v22

    sub-float/2addr v3, v4

    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, v4, v22

    sub-float/2addr v3, v4

    .line 1440
    invoke-virtual {v13, v14, v1, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1444
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v3

    .line 1445
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    .line 1446
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    .line 1447
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v2

    .line 1444
    invoke-virtual {v13, v3, v1, v0, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_b

    .line 1449
    :cond_11
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->c()I

    move-result v1

    sub-int v11, v26, v1

    const/4 v1, 0x2

    div-int/2addr v11, v1

    const/4 v1, 0x0

    .line 1451
    :goto_a
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_13

    .line 1452
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    int-to-float v4, v11

    .line 1453
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->g()I

    move-result v5

    sub-int v5, v0, v5

    int-to-float v5, v5

    .line 1454
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v6

    .line 1452
    invoke-virtual {v13, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1455
    invoke-virtual {v2, v1}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v3

    add-int/2addr v11, v3

    .line 1457
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-eq v1, v3, :cond_12

    int-to-float v3, v11

    .line 1458
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->h()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1460
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v4

    div-float v4, v4, v22

    sub-float v8, v3, v4

    int-to-float v4, v0

    .line 1461
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v22

    sub-float v5, v4, v5

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v6

    div-float v6, v6, v22

    sub-float v9, v5, v6

    .line 1462
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v5

    div-float v5, v5, v22

    sub-float v10, v3, v5

    .line 1463
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v22

    sub-float/2addr v4, v5

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v5

    div-float v5, v5, v22

    add-float v11, v4, v5

    move-object v7, v13

    move-object/from16 v12, v23

    .line 1460
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1466
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1467
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->i()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    move v11, v3

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_13
    :goto_b
    sub-int v14, v29, v26

    const/4 v3, 0x2

    .line 1473
    div-int/2addr v14, v3

    move-object/from16 v5, v20

    invoke-virtual {v5, v14}, Lcom/oplus/camera/c$a;->b(I)V

    sub-int v0, p0, v25

    .line 1474
    div-int/2addr v0, v3

    invoke-virtual {v5, v0}, Lcom/oplus/camera/c$a;->c(I)V

    move-object v1, v5

    goto/16 :goto_19

    :cond_14
    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object/from16 v14, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    const/4 v3, 0x2

    :goto_c
    move/from16 v25, v4

    move-object v4, v9

    move/from16 v26, v11

    move-object/from16 v11, v20

    move-object/from16 v9, v27

    goto :goto_d

    :cond_15
    move v3, v8

    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object/from16 v14, v18

    move-object/from16 v12, v19

    move-object/from16 v5, v25

    move-object/from16 v2, v26

    goto :goto_c

    .line 1279
    :goto_d
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Paint$Align;)V

    .line 1280
    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v11, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sub-int v6, v25, v6

    .line 1283
    div-int/2addr v6, v3

    .line 1284
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v25, v7

    div-int/2addr v7, v3

    sub-int v1, v26, v1

    .line 1286
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int v3, v26, v3

    int-to-float v3, v3

    int-to-float v7, v7

    invoke-virtual {v13, v0, v3, v7, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 v3, 0x0

    add-int/2addr v6, v3

    .line 1288
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->d()I

    move-result v0

    add-int/2addr v6, v0

    if-eqz v24, :cond_17

    .line 1291
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v7, v24

    invoke-virtual {v7, v0}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Paint$Align;)V

    .line 1293
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, v6

    move-object/from16 p1, v10

    .line 1294
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->d()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float v10, v3, v10

    move-object/from16 v17, v15

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v15, v15, v22

    sub-float/2addr v10, v15

    .line 1292
    invoke-virtual {v13, v9, v0, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1297
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->c()I

    move-result v10

    sub-int/2addr v0, v10

    int-to-float v0, v0

    .line 1298
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->d()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float/2addr v3, v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float/2addr v3, v10

    .line 1296
    invoke-virtual {v13, v14, v0, v3, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1300
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v0

    int-to-float v3, v1

    .line 1302
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->g()I

    move-result v10

    sub-int v10, v6, v10

    int-to-float v10, v10

    .line 1303
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v15

    .line 1300
    invoke-virtual {v13, v0, v3, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1304
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v0

    .line 1305
    invoke-virtual {v7}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v3, v7

    int-to-float v3, v3

    .line 1306
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->g()I

    move-result v7

    sub-int v7, v6, v7

    int-to-float v7, v7

    .line 1307
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v8

    .line 1304
    invoke-virtual {v13, v0, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_16
    move-object/from16 v30, p1

    move-object/from16 v20, v5

    move-object/from16 v18, v9

    move-object v15, v11

    move-object v5, v12

    goto/16 :goto_10

    :cond_17
    move-object/from16 p1, v10

    move-object/from16 v17, v15

    .line 1311
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    move v3, v1

    :goto_e
    if-ltz v0, :cond_16

    .line 1312
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    int-to-float v10, v3

    .line 1313
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->g()I

    move-result v15

    sub-int v15, v6, v15

    int-to-float v15, v15

    move-object/from16 v27, v9

    .line 1314
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v9

    .line 1312
    invoke-virtual {v13, v7, v10, v15, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1315
    invoke-virtual {v8, v0}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v7

    sub-int/2addr v3, v7

    if-eqz v0, :cond_18

    int-to-float v3, v3

    .line 1318
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->h()F

    move-result v7

    sub-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1320
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    div-float v7, v7, v22

    sub-float v9, v3, v7

    int-to-float v7, v6

    .line 1321
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->d()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float v10, v7, v10

    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->k()F

    move-result v15

    div-float v15, v15, v22

    sub-float/2addr v10, v15

    .line 1322
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->j()F

    move-result v15

    div-float v15, v15, v22

    sub-float v15, v3, v15

    move-object/from16 v20, v11

    .line 1323
    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->d()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v22

    sub-float/2addr v7, v11

    invoke-virtual {v8}, Lcom/oplus/camera/c$c;->k()F

    move-result v11

    div-float v11, v11, v22

    add-float/2addr v11, v7

    move-object v7, v13

    move-object/from16 p2, v8

    move v8, v9

    move-object/from16 v18, v27

    move v9, v10

    move-object/from16 v30, p1

    move v10, v15

    move-object/from16 v15, v20

    move-object/from16 v20, v5

    move-object v5, v12

    move-object/from16 v12, v23

    .line 1320
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    sub-float/2addr v3, v7

    float-to-int v3, v3

    int-to-float v3, v3

    .line 1327
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->i()F

    move-result v7

    sub-float/2addr v3, v7

    float-to-int v3, v3

    goto :goto_f

    :cond_18
    move-object/from16 v30, p1

    move-object/from16 v20, v5

    move-object/from16 p2, v8

    move-object v15, v11

    move-object v5, v12

    move-object/from16 v18, v27

    :goto_f
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v8, p2

    move-object v12, v5

    move-object v11, v15

    move-object/from16 v9, v18

    move-object/from16 v5, v20

    move-object/from16 p1, v30

    goto/16 :goto_e

    :goto_10
    if-eqz v2, :cond_1b

    .line 1333
    sget-object v0, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v0}, Lcom/oplus/camera/c$c;->a(Landroid/graphics/Paint$Align;)V

    .line 1334
    iget v0, v4, Lcom/oplus/camera/c$d;->b:I

    add-int/2addr v6, v0

    .line 1335
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v0

    add-int/2addr v6, v0

    .line 1337
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->e()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1339
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->c()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    int-to-float v3, v6

    .line 1340
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float v7, v3, v7

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float/2addr v7, v8

    move-object/from16 v12, v18

    .line 1338
    invoke-virtual {v13, v12, v0, v7, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1343
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->c()I

    move-result v0

    sub-int v0, v1, v0

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v0, v7

    int-to-float v0, v0

    .line 1344
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v3, v7

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v3, v7

    .line 1342
    invoke-virtual {v13, v14, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1350
    :cond_19
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    :goto_11
    if-ltz v0, :cond_1b

    .line 1351
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    int-to-float v5, v1

    .line 1352
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->g()I

    move-result v7

    sub-int v7, v6, v7

    int-to-float v7, v7

    .line 1353
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v8

    .line 1351
    invoke-virtual {v13, v3, v5, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1354
    invoke-virtual {v2, v0}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v3

    sub-int/2addr v1, v3

    if-eqz v0, :cond_1a

    int-to-float v1, v1

    .line 1357
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->h()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1359
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v3

    div-float v3, v3, v22

    sub-float v8, v1, v3

    int-to-float v3, v6

    .line 1360
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v22

    sub-float v5, v3, v5

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v7

    div-float v7, v7, v22

    sub-float v9, v5, v7

    .line 1361
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v5

    div-float v5, v5, v22

    sub-float v10, v1, v5

    .line 1362
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v5, v22

    sub-float/2addr v3, v5

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v5

    div-float v5, v5, v22

    add-float v11, v3, v5

    move-object v7, v13

    move-object/from16 v12, v23

    .line 1359
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1365
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    int-to-float v1, v1

    .line 1366
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->i()F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_1b
    sub-int v14, v29, v26

    .line 1371
    iget v0, v4, Lcom/oplus/camera/c$d;->e:I

    sub-int/2addr v14, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Lcom/oplus/camera/c$a;->b(I)V

    if-eqz v16, :cond_1c

    .line 1374
    iget v1, v4, Lcom/oplus/camera/c$d;->e:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->b(I)V

    :cond_1c
    move-object/from16 v1, v17

    move-object/from16 v2, v30

    .line 1377
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1378
    iget v1, v4, Lcom/oplus/camera/c$d;->f:I

    invoke-virtual {v0, v1}, Lcom/oplus/camera/c$a;->c(I)V

    goto :goto_12

    :cond_1d
    sub-int v5, p0, v25

    .line 1380
    iget v1, v4, Lcom/oplus/camera/c$d;->f:I

    sub-int/2addr v5, v1

    invoke-virtual {v0, v5}, Lcom/oplus/camera/c$a;->c(I)V

    :goto_12
    move-object v1, v0

    goto/16 :goto_19

    :cond_1e
    move-object v10, v5

    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object v1, v15

    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v15, v20

    move-object/from16 v7, v24

    move-object/from16 v2, v26

    move-object/from16 v12, v27

    const/4 v3, 0x0

    move/from16 v26, v11

    move-object/from16 v11, v25

    move/from16 v25, v4

    move-object v4, v9

    goto :goto_13

    :cond_1f
    move/from16 v25, v4

    move-object v10, v5

    move-object v4, v9

    move-object/from16 p2, v12

    move/from16 v29, v14

    move-object v1, v15

    move-object/from16 v14, v18

    move-object/from16 v5, v19

    move-object/from16 v15, v20

    move-object/from16 v7, v24

    move-object/from16 v2, v26

    move-object/from16 v12, v27

    const/4 v3, 0x0

    move/from16 v26, v11

    move-object v11, v8

    :goto_13
    sub-int v6, v25, v6

    const/4 v8, 0x2

    .line 1180
    div-int/2addr v6, v8

    .line 1181
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v25, v9

    div-int/2addr v9, v8

    int-to-float v8, v3

    int-to-float v9, v9

    .line 1182
    invoke-virtual {v13, v0, v8, v9, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int v0, v3, v6

    .line 1185
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->d()I

    move-result v6

    add-int/2addr v0, v6

    move v6, v3

    move/from16 v8, v28

    .line 1188
    :goto_14
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_21

    .line 1189
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    int-to-float v3, v8

    .line 1190
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->g()I

    move-result v17

    move-object/from16 v24, v7

    sub-int v7, v0, v17

    int-to-float v7, v7

    move-object/from16 p1, v10

    .line 1191
    invoke-virtual/range {p2 .. p2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v10

    .line 1189
    invoke-virtual {v13, v9, v3, v7, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v3, p2

    .line 1192
    invoke-virtual {v3, v6}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v7

    add-int/2addr v8, v7

    .line 1194
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-eq v6, v7, :cond_20

    int-to-float v7, v8

    .line 1195
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->h()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v10, v7

    .line 1197
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    div-float v7, v7, v22

    sub-float v8, v10, v7

    int-to-float v7, v0

    .line 1198
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    sub-float v9, v7, v9

    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->k()F

    move-result v17

    div-float v17, v17, v22

    sub-float v9, v9, v17

    .line 1199
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->j()F

    move-result v17

    div-float v17, v17, v22

    sub-float v17, v10, v17

    move/from16 v18, v10

    .line 1200
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->d()I

    move-result v10

    int-to-float v10, v10

    div-float v10, v10, v22

    sub-float/2addr v7, v10

    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->k()F

    move-result v10

    div-float v10, v10, v22

    add-float v19, v7, v10

    move-object/from16 v20, v24

    move-object v7, v13

    move-object/from16 v24, v1

    move-object/from16 v1, p1

    move/from16 v10, v17

    move-object v1, v11

    move/from16 v11, v19

    move-object/from16 v27, v12

    move-object/from16 v12, v23

    .line 1197
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1203
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    add-float v10, v18, v7

    float-to-int v7, v10

    int-to-float v7, v7

    .line 1204
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->i()F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v7

    goto :goto_15

    :cond_20
    move-object/from16 v27, v12

    move-object/from16 v20, v24

    move-object/from16 v24, v1

    move-object v1, v11

    :goto_15
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, p1

    move-object v11, v1

    move-object/from16 p2, v3

    move-object/from16 v7, v20

    move-object/from16 v1, v24

    move-object/from16 v12, v27

    const/4 v3, 0x0

    goto/16 :goto_14

    :cond_21
    move-object/from16 v3, p2

    move-object/from16 v24, v1

    move-object/from16 v20, v7

    move-object/from16 p1, v10

    move-object v1, v11

    move-object/from16 v27, v12

    if-eqz v20, :cond_22

    .line 1210
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->c()I

    move-result v6

    add-int v6, v28, v6

    int-to-float v6, v6

    int-to-float v7, v0

    .line 1211
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->d()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float v8, v7, v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    sub-float/2addr v8, v9

    move-object/from16 v9, v27

    .line 1209
    invoke-virtual {v13, v9, v6, v8, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1214
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->c()I

    move-result v6

    add-int v6, v28, v6

    int-to-float v6, v6

    .line 1215
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->d()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float/2addr v7, v8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float/2addr v7, v8

    .line 1213
    invoke-virtual {v13, v14, v6, v7, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1217
    invoke-virtual/range {v20 .. v20}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v6

    .line 1218
    invoke-virtual {v3}, Lcom/oplus/camera/c$c;->c()I

    move-result v3

    add-int v3, v28, v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 1219
    invoke-virtual/range {v20 .. v20}, Lcom/oplus/camera/c$c;->g()I

    move-result v7

    sub-int v7, v0, v7

    int-to-float v7, v7

    .line 1220
    invoke-virtual/range {v20 .. v20}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v8

    .line 1217
    invoke-virtual {v13, v6, v3, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_16

    :cond_22
    move-object/from16 v9, v27

    :goto_16
    if-eqz v2, :cond_25

    .line 1224
    iget v3, v4, Lcom/oplus/camera/c$d;->b:I

    add-int/2addr v0, v3

    .line 1225
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v3

    add-int/2addr v0, v3

    .line 1227
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->e()Z

    move-result v3

    if-eqz v3, :cond_23

    move/from16 v12, v28

    int-to-float v3, v12

    int-to-float v6, v0

    .line 1230
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float v7, v6, v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v8, v22

    sub-float/2addr v7, v8

    .line 1228
    invoke-virtual {v13, v9, v3, v7, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1234
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v6, v7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v7, v22

    sub-float/2addr v6, v7

    .line 1232
    invoke-virtual {v13, v14, v3, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1236
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, v12

    move v12, v3

    goto :goto_17

    :cond_23
    move/from16 v12, v28

    :goto_17
    const/4 v3, 0x0

    .line 1241
    :goto_18
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_25

    .line 1242
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    int-to-float v6, v12

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->g()I

    move-result v7

    sub-int v7, v0, v7

    int-to-float v7, v7

    .line 1243
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->f()Landroid/graphics/Paint;

    move-result-object v8

    .line 1242
    invoke-virtual {v13, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1244
    invoke-virtual {v2, v3}, Lcom/oplus/camera/c$c;->b(I)I

    move-result v5

    add-int/2addr v12, v5

    .line 1246
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-eq v3, v5, :cond_24

    int-to-float v5, v12

    .line 1247
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->h()F

    move-result v7

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    .line 1249
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    div-float v7, v7, v22

    sub-float v8, v5, v7

    int-to-float v7, v0

    .line 1250
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    sub-float v9, v7, v9

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v10

    div-float v10, v10, v22

    sub-float/2addr v9, v10

    .line 1251
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v10

    div-float v10, v10, v22

    sub-float v10, v5, v10

    .line 1252
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->d()I

    move-result v11

    int-to-float v11, v11

    div-float v11, v11, v22

    sub-float/2addr v7, v11

    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->k()F

    move-result v11

    div-float v11, v11, v22

    add-float/2addr v11, v7

    move-object v7, v13

    move-object/from16 v12, v23

    .line 1249
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1255
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->j()F

    move-result v7

    add-float/2addr v5, v7

    float-to-int v5, v5

    int-to-float v5, v5

    .line 1256
    invoke-virtual {v2}, Lcom/oplus/camera/c$c;->i()F

    move-result v7

    add-float/2addr v5, v7

    float-to-int v5, v5

    move v12, v5

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    .line 1261
    :cond_25
    iget v0, v4, Lcom/oplus/camera/c$d;->e:I

    invoke-virtual {v1, v0}, Lcom/oplus/camera/c$a;->b(I)V

    if-eqz v16, :cond_26

    sub-int v14, v29, v26

    .line 1264
    iget v0, v4, Lcom/oplus/camera/c$d;->e:I

    sub-int/2addr v14, v0

    invoke-virtual {v1, v14}, Lcom/oplus/camera/c$a;->b(I)V

    :cond_26
    move-object/from16 v2, p1

    move-object/from16 v0, v24

    .line 1267
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sub-int v5, p0, v25

    .line 1268
    iget v0, v4, Lcom/oplus/camera/c$d;->f:I

    sub-int/2addr v5, v0

    invoke-virtual {v1, v5}, Lcom/oplus/camera/c$a;->c(I)V

    goto :goto_19

    .line 1271
    :cond_27
    iget v0, v4, Lcom/oplus/camera/c$d;->f:I

    invoke-virtual {v1, v0}, Lcom/oplus/camera/c$a;->c(I)V

    :goto_19
    if-eqz v16, :cond_28

    .line 1480
    invoke-static/range {v21 .. v21}, Lcom/oplus/camera/util/Util;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1a

    :cond_28
    move-object/from16 v5, v21

    .line 1483
    :goto_1a
    invoke-virtual {v1, v5}, Lcom/oplus/camera/c$a;->a(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p3

    .line 1484
    invoke-virtual {v1, v0}, Lcom/oplus/camera/c$a;->a(Lcom/oplus/camera/c$e;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x4d552290 -> :sswitch_3
        -0x3d4101ab -> :sswitch_2
        -0x3b46bc94 -> :sswitch_1
        0x26581979 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Landroid/util/Size;Lcom/oplus/camera/q$a;Ljava/util/HashSet;ZIIZLjava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Size;",
            "Lcom/oplus/camera/q$a;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;ZIIZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p8

    const/16 v5, 0xb4

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_1

    if-ne v5, v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    iput v7, v0, Lcom/oplus/camera/c;->N:I

    move-object/from16 v8, p1

    goto :goto_1

    .line 333
    :cond_1
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/oplus/camera/c;->a(Landroid/util/Size;)Landroid/util/Size;

    move-result-object v8

    .line 334
    iput v6, v0, Lcom/oplus/camera/c;->N:I

    .line 339
    :goto_1
    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-static {v9, v10}, Lcom/oplus/camera/util/Util;->d(II)I

    move-result v9

    iput v9, v0, Lcom/oplus/camera/c;->O:I

    move-object/from16 v9, p3

    .line 340
    iput-object v9, v0, Lcom/oplus/camera/c;->o:Ljava/util/Set;

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, v0, Lcom/oplus/camera/c;->P:J

    if-eqz v3, :cond_2

    move v9, v7

    goto :goto_2

    :cond_2
    move v9, v6

    .line 345
    :goto_2
    invoke-static {}, Lcom/oplus/camera/c;->f()Ljava/lang/String;

    move-result-object v10

    .line 346
    iget-object v11, v0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    move-object/from16 v12, p2

    invoke-static {v11, v12}, Lcom/oplus/camera/util/h;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/c;->q()Ljava/lang/String;

    move-result-object v12

    .line 348
    iput-boolean v6, v0, Lcom/oplus/camera/c;->f:Z

    .line 350
    invoke-static {}, Lcom/oplus/camera/q;->a()Lcom/oplus/camera/q;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/oplus/camera/q;->a(Ljava/lang/String;)V

    .line 351
    iget-object v13, v0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    const-string v15, "pref_watermark_display_info_key"

    invoke-virtual {v13, v15, v14}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v13

    .line 354
    iget-object v14, v0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-virtual {v14}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f030013

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 355
    aget-object v15, v14, v6

    invoke-interface {v13, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v15

    .line 356
    aget-object v6, v14, v7

    invoke-interface {v13, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    const/16 v16, 0x2

    .line 357
    aget-object v14, v14, v16

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 359
    invoke-virtual/range {p8 .. p8}, Ljava/lang/String;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 361
    iget-boolean v5, v0, Lcom/oplus/camera/c;->z:Z

    if-eq v5, v15, :cond_3

    .line 362
    iput-boolean v15, v0, Lcom/oplus/camera/c;->z:Z

    .line 363
    iput-boolean v7, v0, Lcom/oplus/camera/c;->f:Z

    .line 366
    :cond_3
    iget-boolean v5, v0, Lcom/oplus/camera/c;->x:Z

    if-eq v5, v14, :cond_4

    .line 367
    iput-boolean v14, v0, Lcom/oplus/camera/c;->x:Z

    .line 368
    iput-boolean v7, v0, Lcom/oplus/camera/c;->f:Z

    .line 371
    :cond_4
    iget-boolean v5, v0, Lcom/oplus/camera/c;->y:Z

    if-eq v5, v6, :cond_5

    .line 372
    iput-boolean v6, v0, Lcom/oplus/camera/c;->y:Z

    .line 373
    iput-boolean v7, v0, Lcom/oplus/camera/c;->f:Z

    .line 376
    :cond_5
    iget-object v5, v0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    const-string v6, "pref_watermark_position_key"

    const-string v14, ""

    invoke-virtual {v5, v6, v14}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 378
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/oplus/camera/c;->M:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 379
    iput-object v5, v0, Lcom/oplus/camera/c;->M:Ljava/lang/String;

    .line 380
    iput-boolean v7, v0, Lcom/oplus/camera/c;->f:Z

    .line 383
    :cond_6
    iget-boolean v5, v0, Lcom/oplus/camera/c;->f:Z

    if-nez v5, :cond_8

    .line 384
    invoke-direct {v0, v12, v10, v11, v13}, Lcom/oplus/camera/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    if-nez v5, :cond_8

    iget-boolean v5, v0, Lcom/oplus/camera/c;->A:Z

    if-eq v5, v9, :cond_7

    goto :goto_3

    :cond_7
    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    :goto_3
    move v5, v7

    :goto_4
    iput-boolean v5, v0, Lcom/oplus/camera/c;->f:Z

    .line 388
    :cond_9
    iget-object v5, v0, Lcom/oplus/camera/c;->W:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget v5, v0, Lcom/oplus/camera/c;->N:I

    iget v6, v0, Lcom/oplus/camera/c;->E:I

    if-eq v5, v6, :cond_b

    .line 389
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSloganYuv, mMakeupKey: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/oplus/camera/c;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", mSloganOrientation: "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/oplus/camera/c;->E:I

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oplus/camera/c;->N:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BaseSloganUtil"

    invoke-static {v6, v5}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    iput-object v4, v0, Lcom/oplus/camera/c;->W:Ljava/lang/String;

    .line 393
    iput-boolean v7, v0, Lcom/oplus/camera/c;->f:Z

    :cond_b
    if-eqz v2, :cond_f

    const/16 v4, 0xb4

    if-ne v4, v2, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v9, :cond_e

    if-nez v1, :cond_e

    .line 403
    iget-object v2, v0, Lcom/oplus/camera/c;->w:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    .line 404
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    :goto_5
    move v2, v7

    goto :goto_7

    :cond_e
    const/4 v2, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    if-eqz v9, :cond_e

    if-nez v1, :cond_e

    .line 400
    iget-object v2, v0, Lcom/oplus/camera/c;->v:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d

    .line 401
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_5

    .line 408
    :goto_7
    iget v4, v0, Lcom/oplus/camera/c;->h:I

    if-eq v4, v7, :cond_12

    iget-boolean v4, v0, Lcom/oplus/camera/c;->f:Z

    if-nez v4, :cond_11

    if-nez v2, :cond_11

    if-eqz v9, :cond_10

    iget-boolean v2, v0, Lcom/oplus/camera/c;->B:Z

    if-ne v1, v2, :cond_11

    :cond_10
    iget-object v2, v0, Lcom/oplus/camera/c;->q:Landroid/util/Size;

    .line 410
    invoke-virtual {v8, v2}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x3

    if-eq v2, v3, :cond_11

    if-eqz v9, :cond_12

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/c;->j()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/camera/c;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    move v2, v7

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    :goto_8
    iput-boolean v2, v0, Lcom/oplus/camera/c;->f:Z

    .line 412
    iput-boolean v1, v0, Lcom/oplus/camera/c;->B:Z

    .line 413
    iput-boolean v9, v0, Lcom/oplus/camera/c;->A:Z

    .line 414
    iget-wide v1, v0, Lcom/oplus/camera/c;->P:J

    iput-wide v1, v0, Lcom/oplus/camera/c;->Q:J

    .line 416
    iget-boolean v1, v0, Lcom/oplus/camera/c;->f:Z

    if-eqz v1, :cond_14

    const-string v1, "com.oplus.video.watermark.hal.support"

    .line 417
    invoke-static {v1}, Lcom/oplus/camera/aps/config/CameraConfig;->getConfigBooleanValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-nez p7, :cond_13

    .line 419
    invoke-direct/range {p0 .. p0}, Lcom/oplus/camera/c;->m()V

    goto :goto_9

    .line 421
    :cond_13
    iget-object v1, v0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/oplus/camera/c;->b(Ljava/lang/String;)V

    .line 424
    :goto_9
    iput v7, v0, Lcom/oplus/camera/c;->h:I

    .line 425
    iget-object v1, v0, Lcom/oplus/camera/c;->R:Lcom/oplus/camera/c$e;

    iput-object v8, v1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    .line 426
    iput-object v12, v1, Lcom/oplus/camera/c$e;->b:Ljava/lang/String;

    .line 427
    iput-object v10, v1, Lcom/oplus/camera/c$e;->c:Ljava/lang/String;

    .line 428
    iput-object v11, v1, Lcom/oplus/camera/c$e;->d:Ljava/lang/String;

    .line 429
    iget v2, v0, Lcom/oplus/camera/c;->N:I

    iput v2, v1, Lcom/oplus/camera/c$e;->g:I

    .line 430
    iget-object v1, v0, Lcom/oplus/camera/c;->R:Lcom/oplus/camera/c$e;

    iget-object v2, v0, Lcom/oplus/camera/c;->W:Ljava/lang/String;

    iput-object v2, v1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    .line 431
    iput-boolean v15, v1, Lcom/oplus/camera/c$e;->i:Z

    .line 433
    iget-object v1, v0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 434
    iget-object v1, v0, Lcom/oplus/camera/c;->R:Lcom/oplus/camera/c$e;

    invoke-virtual {v0, v1, v3}, Lcom/oplus/camera/c;->a(Lcom/oplus/camera/c$e;I)V

    .line 435
    iget-object v1, v0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 438
    iput-object v12, v0, Lcom/oplus/camera/c;->F:Ljava/lang/String;

    .line 439
    iput-object v10, v0, Lcom/oplus/camera/c;->G:Ljava/lang/String;

    .line 440
    iput-object v11, v0, Lcom/oplus/camera/c;->H:Ljava/lang/String;

    .line 441
    iget-object v1, v0, Lcom/oplus/camera/c;->L:Ljava/lang/String;

    iput-object v1, v0, Lcom/oplus/camera/c;->I:Ljava/lang/String;

    .line 442
    iget-object v1, v0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    const/4 v2, 0x0

    const-string v3, "pref_watermark_size_key"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/camera/c;->J:Ljava/lang/String;

    const-string v1, "2.0.3"

    .line 443
    iput-object v1, v0, Lcom/oplus/camera/c;->K:Ljava/lang/String;

    .line 444
    iget v1, v0, Lcom/oplus/camera/c;->D:I

    iput v1, v0, Lcom/oplus/camera/c;->C:I

    .line 445
    iget v1, v0, Lcom/oplus/camera/c;->N:I

    iput v1, v0, Lcom/oplus/camera/c;->E:I

    .line 446
    iput-object v8, v0, Lcom/oplus/camera/c;->q:Landroid/util/Size;

    const/4 v1, 0x0

    .line 448
    iput v1, v0, Lcom/oplus/camera/c;->h:I

    :cond_14
    return-void
.end method

.method public a(Lcom/oplus/camera/c$e;I)V
    .locals 8

    const-string p2, "BaseSloganUtil"

    const-string v0, "generateSloganBuffer, mSloganBuffer start s0:create bitmap start"

    .line 453
    invoke-static {p2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0, v0, v2, p1}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/c$e;)Lcom/oplus/camera/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    goto :goto_0

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    invoke-static {v0, p1, v2}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/c$e;Landroid/content/SharedPreferences;)Lcom/oplus/camera/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    :goto_0
    const-string v0, "generateSloganBuffer, mSloganBuffer start s1:create yuv prepare"

    .line 461
    invoke-static {p2, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    if-eqz v0, :cond_9

    .line 465
    invoke-virtual {v0}, Lcom/oplus/camera/c$a;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 466
    iget-object v2, p0, Lcom/oplus/camera/c;->T:Ljava/util/HashMap;

    iget v3, p0, Lcom/oplus/camera/c;->N:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    iget-object v2, p0, Lcom/oplus/camera/c;->n:Landroid/content/res/Resources;

    const v3, 0x7f0708e2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 472
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    .line 473
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v5, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt v3, v5, :cond_1

    .line 474
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 475
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    goto :goto_1

    .line 477
    :cond_1
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 478
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    goto :goto_1

    .line 481
    :cond_2
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    iget-object v5, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lt v3, v5, :cond_3

    .line 482
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 483
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    goto :goto_1

    .line 485
    :cond_3
    iget-object v3, p1, Lcom/oplus/camera/c$e;->a:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v4

    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 486
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v5

    :goto_1
    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v5, v6

    .line 490
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v3

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v3, v6

    add-int v6, v5, v2

    const/4 v7, 0x1

    if-le v3, v6, :cond_6

    int-to-float v6, v5

    mul-float/2addr v6, v4

    sub-int/2addr v3, v2

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 494
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    float-to-int v3, v3

    .line 495
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 497
    rem-int/lit8 v6, v3, 0x2

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 501
    :cond_4
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    .line 505
    :cond_5
    invoke-static {v0, v3, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    mul-int/lit8 v2, v2, 0x2

    add-int v3, v5, v2

    .line 509
    :cond_6
    iget-object v2, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    new-instance v4, Landroid/util/Size;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v2, v4}, Lcom/oplus/camera/c$a;->a(Landroid/util/Size;)V

    .line 510
    iget-object v2, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    invoke-virtual {v2, v3}, Lcom/oplus/camera/c$a;->a(I)V

    .line 513
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".slogan_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ".yuv"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "generateSloganBuffer, waterMarkBitmap width: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", watermarkWidthInScreen: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    invoke-static {p2, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "generateSloganBuffer, mSloganBuffer start s2:create yuv start"

    .line 519
    invoke-static {p2, v2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-boolean v2, p0, Lcom/oplus/camera/c;->A:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/oplus/camera/c;->B:Z

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    iget-object p1, p1, Lcom/oplus/camera/c$e;->e:Ljava/lang/String;

    .line 522
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 521
    invoke-direct {p0, v0, v7, p1}, Lcom/oplus/camera/c;->a(Landroid/graphics/Bitmap;ZZ)Z

    move-result p1

    .line 524
    iget-boolean v1, p0, Lcom/oplus/camera/c;->A:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/oplus/camera/c;->B:Z

    if-nez v1, :cond_8

    .line 525
    invoke-direct {p0, v0}, Lcom/oplus/camera/c;->a(Landroid/graphics/Bitmap;)V

    goto :goto_3

    .line 527
    :cond_8
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 530
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateSloganBuffer,slogan buffer build "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1038
    iput-boolean p1, p0, Lcom/oplus/camera/c;->X:Z

    return-void
.end method

.method public b()Lcom/oplus/camera/c$a;
    .locals 3

    .line 794
    iget-object v0, p0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 795
    iget-object p0, p0, Lcom/oplus/camera/c;->S:Lcom/oplus/camera/c$a;

    return-object p0
.end method

.method public b(Z)V
    .locals 0

    .line 1042
    iput-boolean p1, p0, Lcom/oplus/camera/c;->Y:Z

    return-void
.end method

.method public c()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/oplus/camera/c$a;",
            ">;"
        }
    .end annotation

    .line 817
    iget-object v0, p0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 819
    iget-object p0, p0, Lcom/oplus/camera/c;->T:Ljava/util/HashMap;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .line 823
    iget-object v0, p0, Lcom/oplus/camera/c;->e:Landroid/os/ConditionVariable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/camera/c;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-static {}, Lcom/oplus/camera/aps/util/AlgoSwitchConfig;->getApsVersion()I

    move-result v1

    const-string v2, "getYuvFilePath, return path: "

    const-string v3, "BaseSloganUtil"

    const/4 v4, 0x2

    if-ne v4, v1, :cond_0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object p0, p0, Lcom/oplus/camera/c;->i:Ljava/lang/String;

    return-object p0

    .line 833
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public e()I
    .locals 1

    const/4 v0, 0x0

    .line 839
    iput v0, p0, Lcom/oplus/camera/c;->g:I

    .line 841
    invoke-direct {p0}, Lcom/oplus/camera/c;->q()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 844
    iput v0, p0, Lcom/oplus/camera/c;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    .line 846
    iput v0, p0, Lcom/oplus/camera/c;->g:I

    .line 849
    :goto_0
    iget p0, p0, Lcom/oplus/camera/c;->g:I

    return p0
.end method

.method public g()V
    .locals 4

    .line 1003
    iget-object v0, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/c;->k:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-string v3, "pref_watermark_display_info_key"

    invoke-virtual {v1, v3, v2}, Lcom/oplus/camera/ComboPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x2

    .line 1009
    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 1011
    iget-object p0, p0, Lcom/oplus/camera/c;->l:Lcom/oplus/camera/ComboPreferences;

    invoke-virtual {p0}, Lcom/oplus/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 1014
    invoke-interface {p0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1017
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "pref_watermark_first_open_key"

    .line 1018
    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v0, "pref_watermark_function_key"

    const-string v1, "off"

    .line 1019
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1022
    :cond_2
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected i()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected j()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
