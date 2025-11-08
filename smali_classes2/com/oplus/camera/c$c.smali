.class Lcom/oplus/camera/c$c;
.super Ljava/lang/Object;
.source "BaseSloganUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/Paint$FontMetrics;

.field private c:Landroid/text/TextPaint;

.field private d:Z

.field private e:Z

.field private f:Landroid/graphics/Bitmap;

.field private g:F

.field private h:F

.field private i:F

.field private j:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)V
    .locals 1

    const/4 v0, 0x1

    .line 2275
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oplus/camera/c$c;-><init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;FZ)V
    .locals 2

    .line 2278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2263
    iput-object v0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    .line 2264
    iput-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    .line 2265
    iput-object v0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    const/4 v1, 0x0

    .line 2266
    iput-boolean v1, p0, Lcom/oplus/camera/c$c;->d:Z

    .line 2267
    iput-boolean v1, p0, Lcom/oplus/camera/c$c;->e:Z

    .line 2268
    iput-object v0, p0, Lcom/oplus/camera/c$c;->f:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 2269
    iput v0, p0, Lcom/oplus/camera/c$c;->g:F

    .line 2270
    iput v0, p0, Lcom/oplus/camera/c$c;->h:F

    .line 2271
    iput v0, p0, Lcom/oplus/camera/c$c;->i:F

    .line 2272
    iput v0, p0, Lcom/oplus/camera/c$c;->j:F

    .line 2279
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    const v1, 0x7f070d2a

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/oplus/camera/c$c;->g:F

    .line 2281
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    const v1, 0x7f070d2b

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/oplus/camera/c$c;->h:F

    .line 2283
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    const v1, 0x7f070d2d

    invoke-static {p1, v1, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result v0

    mul-float/2addr v0, p3

    iput v0, p0, Lcom/oplus/camera/c$c;->i:F

    .line 2285
    invoke-static {p1, p2, p3}, Lcom/oplus/camera/c;->a(Landroid/content/Context;Lcom/oplus/camera/ComboPreferences;F)F

    move-result p2

    iput p2, p0, Lcom/oplus/camera/c$c;->j:F

    .line 2287
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    .line 2288
    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    .line 2289
    iget-object p2, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2290
    iget-object p2, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f06004d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setColor(I)V

    if-eqz p4, :cond_0

    const p2, 0x7f070aa8

    .line 2293
    sget p3, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p2, p3}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p2

    const p3, 0x7f070aa9

    .line 2294
    sget p4, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p3, p4}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p3

    const p4, 0x7f070aaa

    .line 2295
    sget v0, Lcom/oplus/camera/util/Util;->a:I

    invoke-static {p1, p4, v0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;II)F

    move-result p4

    .line 2296
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06006a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 2297
    iget-object p0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/c$c;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2262
    iget-object p0, p0, Lcom/oplus/camera/c$c;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/c$c;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 2262
    iput-object p1, p0, Lcom/oplus/camera/c$c;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lcom/oplus/camera/c$c;Z)Z
    .locals 0

    .line 2262
    iput-boolean p1, p0, Lcom/oplus/camera/c$c;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/oplus/camera/c$c;)Z
    .locals 0

    .line 2262
    iget-boolean p0, p0, Lcom/oplus/camera/c$c;->e:Z

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2315
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    const-string v0, ""

    invoke-static {v0, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(I)Ljava/lang/String;
    .locals 0

    .line 2323
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public a(F)V
    .locals 1

    const/4 v0, 0x0

    .line 2354
    iput-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    .line 2355
    iget-object p0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public a(Landroid/graphics/Paint$Align;)V
    .locals 0

    .line 2371
    iget-object p0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 0

    .line 2359
    iget-object p0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2302
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 2306
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public b(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2338
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/c$c;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public b()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2319
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 2310
    iget-object v0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2311
    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()I
    .locals 3

    .line 2327
    iget-object v0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/oplus/camera/c$c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/oplus/camera/c$c;->g:F

    float-to-double v1, v1

    .line 2328
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/c$c;->h:F

    float-to-double v1, v1

    .line 2329
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/oplus/camera/c$c;->i:F

    float-to-double v1, v1

    .line 2330
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object p0, p0, Lcom/oplus/camera/c$c;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 1

    .line 2342
    iget-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    if-nez v0, :cond_0

    .line 2343
    iget-object v0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    .line 2346
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object p0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public e()Z
    .locals 0

    .line 2350
    iget-boolean p0, p0, Lcom/oplus/camera/c$c;->d:Z

    return p0
.end method

.method public f()Landroid/graphics/Paint;
    .locals 0

    .line 2367
    iget-object p0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    return-object p0
.end method

.method public g()I
    .locals 1

    .line 2375
    iget-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    if-nez v0, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/oplus/camera/c$c;->c:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    .line 2379
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/c$c;->b:Landroid/graphics/Paint$FontMetrics;

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    float-to-int p0, p0

    return p0
.end method

.method public h()F
    .locals 0

    .line 2383
    iget p0, p0, Lcom/oplus/camera/c$c;->g:F

    return p0
.end method

.method public i()F
    .locals 0

    .line 2387
    iget p0, p0, Lcom/oplus/camera/c$c;->h:F

    return p0
.end method

.method public j()F
    .locals 0

    .line 2391
    iget p0, p0, Lcom/oplus/camera/c$c;->i:F

    return p0
.end method

.method public k()F
    .locals 0

    .line 2395
    iget p0, p0, Lcom/oplus/camera/c$c;->j:F

    return p0
.end method
