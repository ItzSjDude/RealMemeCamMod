.class Lcom/oplus/camera/capmode/y$a;
.super Landroid/graphics/drawable/Drawable;
.source "XPanMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/capmode/y$a$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private d:J

.field private e:J

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Ljava/lang/Runnable;

.field private i:Lcom/oplus/camera/capmode/y$a$a;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 882
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 872
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->a:Landroid/graphics/Paint;

    .line 873
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->b:Landroid/graphics/Paint;

    .line 874
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->c:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    .line 875
    iput-wide v0, p0, Lcom/oplus/camera/capmode/y$a;->d:J

    .line 876
    iput-wide v0, p0, Lcom/oplus/camera/capmode/y$a;->e:J

    const/4 v0, 0x0

    .line 877
    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->f:Landroid/graphics/Bitmap;

    .line 878
    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->g:Landroid/graphics/Bitmap;

    .line 879
    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->h:Ljava/lang/Runnable;

    .line 880
    sget-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_IDLE:Lcom/oplus/camera/capmode/y$a$a;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    .line 884
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$a;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 885
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$a;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 886
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$a;->a:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v0, 0x14

    .line 887
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 892
    iget-object v2, p0, Lcom/oplus/camera/capmode/y$a;->a:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v3, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>([F)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 893
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic a(Lcom/oplus/camera/capmode/y$a;)Landroid/graphics/Bitmap;
    .locals 0

    .line 871
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$a;->f:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private a(Ljava/lang/Long;)V
    .locals 2

    .line 960
    invoke-virtual {p1}, Ljava/lang/Long;->floatValue()F

    move-result p1

    .line 962
    iget-wide v0, p0, Lcom/oplus/camera/capmode/y$a;->d:J

    long-to-float v0, v0

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroidx/core/c/a;->a(FFF)F

    move-result p1

    .line 963
    invoke-static {}, Lcom/oplus/camera/capmode/y;->b()Landroid/view/animation/PathInterpolator;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result p1

    .line 964
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$a;->a:Landroid/graphics/Paint;

    sub-float/2addr v0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method private b()V
    .locals 7

    .line 940
    iget-wide v0, p0, Lcom/oplus/camera/capmode/y$a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/oplus/camera/capmode/y$a;->d:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_1

    .line 942
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 943
    iget-wide v4, p0, Lcom/oplus/camera/capmode/y$a;->e:J

    sub-long/2addr v0, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_1

    .line 945
    iget-wide v4, p0, Lcom/oplus/camera/capmode/y$a;->d:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 946
    sget-object v2, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_ANIMATING:Lcom/oplus/camera/capmode/y$a$a;

    iput-object v2, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    .line 947
    new-instance v2, Lcom/oplus/camera/capmode/-$$Lambda$y$a$cbTmxWegEk4ICSSIILDrMmgfU-0;

    invoke-direct {v2, p0}, Lcom/oplus/camera/capmode/-$$Lambda$y$a$cbTmxWegEk4ICSSIILDrMmgfU-0;-><init>(Lcom/oplus/camera/capmode/y$a;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x21

    add-long/2addr v3, v5

    invoke-virtual {p0, v2, v3, v4}, Lcom/oplus/camera/capmode/y$a;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 948
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/camera/capmode/y$a;->a(Ljava/lang/Long;)V

    .line 949
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y$a;->invalidateSelf()V

    goto :goto_0

    .line 951
    :cond_1
    sget-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATING_COMPLETED:Lcom/oplus/camera/capmode/y$a$a;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    .line 952
    iput-wide v2, p0, Lcom/oplus/camera/capmode/y$a;->e:J

    .line 953
    iget-object v0, p0, Lcom/oplus/camera/capmode/y$a;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 956
    :goto_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y$a;->invalidateSelf()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static synthetic lambda$cbTmxWegEk4ICSSIILDrMmgfU-0(Lcom/oplus/camera/capmode/y$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/oplus/camera/capmode/y$a;->b()V

    return-void
.end method


# virtual methods
.method public a()Lcom/oplus/camera/capmode/y$a$a;
    .locals 0

    .line 915
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    .line 919
    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->f:Landroid/graphics/Bitmap;

    .line 920
    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->g:Landroid/graphics/Bitmap;

    .line 921
    sget-object v0, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_IDLE:Lcom/oplus/camera/capmode/y$a$a;

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    if-eqz p1, :cond_0

    .line 924
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/camera/capmode/y$a;->f:Landroid/graphics/Bitmap;

    .line 925
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/capmode/y$a;->g:Landroid/graphics/Bitmap;

    .line 928
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y$a;->invalidateSelf()V

    return-void
.end method

.method public a(Ljava/lang/Long;Ljava/lang/Runnable;)V
    .locals 0

    .line 932
    iput-object p2, p0, Lcom/oplus/camera/capmode/y$a;->h:Ljava/lang/Runnable;

    .line 933
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/capmode/y$a;->d:J

    .line 934
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oplus/camera/capmode/y$a;->e:J

    .line 935
    sget-object p1, Lcom/oplus/camera/capmode/y$a$a;->ANIMATION_STARTED:Lcom/oplus/camera/capmode/y$a$a;

    iput-object p1, p0, Lcom/oplus/camera/capmode/y$a;->i:Lcom/oplus/camera/capmode/y$a$a;

    .line 936
    invoke-direct {p0}, Lcom/oplus/camera/capmode/y$a;->b()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 901
    invoke-virtual {p0}, Lcom/oplus/camera/capmode/y$a;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/oplus/camera/capmode/y$a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 905
    iget-object v1, p0, Lcom/oplus/camera/capmode/y$a;->g:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 906
    iget-object v3, p0, Lcom/oplus/camera/capmode/y$a;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 909
    :cond_0
    iget-object v1, p0, Lcom/oplus/camera/capmode/y$a;->f:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 910
    iget-object p0, p0, Lcom/oplus/camera/capmode/y$a;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
