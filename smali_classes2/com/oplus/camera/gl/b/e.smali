.class public Lcom/oplus/camera/gl/b/e;
.super Ljava/lang/Object;
.source "MultiVideoSmallSurfaceTouchEventHelper.java"


# static fields
.field private static a:Lcom/oplus/camera/gl/b/e;


# instance fields
.field private b:Z

.field private c:Z

.field private d:F

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    .line 13
    iput-boolean v0, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    const/4 v1, 0x0

    .line 14
    iput v1, p0, Lcom/oplus/camera/gl/b/e;->d:F

    .line 15
    iput v1, p0, Lcom/oplus/camera/gl/b/e;->e:F

    .line 16
    iput v0, p0, Lcom/oplus/camera/gl/b/e;->f:I

    .line 17
    iput v0, p0, Lcom/oplus/camera/gl/b/e;->g:I

    .line 18
    iput v0, p0, Lcom/oplus/camera/gl/b/e;->h:I

    .line 19
    iput v0, p0, Lcom/oplus/camera/gl/b/e;->i:I

    return-void
.end method

.method public static a()Lcom/oplus/camera/gl/b/e;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/camera/gl/b/e;->a:Lcom/oplus/camera/gl/b/e;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/oplus/camera/gl/b/e;

    invoke-direct {v0}, Lcom/oplus/camera/gl/b/e;-><init>()V

    sput-object v0, Lcom/oplus/camera/gl/b/e;->a:Lcom/oplus/camera/gl/b/e;

    .line 30
    :cond_0
    sget-object v0, Lcom/oplus/camera/gl/b/e;->a:Lcom/oplus/camera/gl/b/e;

    return-object v0
.end method


# virtual methods
.method public a(IIII)V
    .locals 0

    .line 106
    iput p1, p0, Lcom/oplus/camera/gl/b/e;->f:I

    .line 107
    iput p2, p0, Lcom/oplus/camera/gl/b/e;->h:I

    .line 108
    iput p3, p0, Lcom/oplus/camera/gl/b/e;->g:I

    .line 109
    iput p4, p0, Lcom/oplus/camera/gl/b/e;->i:I

    return-void
.end method

.method public a(Landroid/view/MotionEvent;Lcom/oplus/camera/ui/preview/h;)Z
    .locals 8

    .line 37
    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/h;->B()Landroid/graphics/Rect;

    move-result-object v0

    .line 38
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/h;->z()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_5

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    goto/16 :goto_3

    .line 55
    :cond_0
    iget p1, p0, Lcom/oplus/camera/gl/b/e;->d:F

    sub-float p1, v1, p1

    .line 56
    iget v5, p0, Lcom/oplus/camera/gl/b/e;->e:F

    sub-float v5, v2, v5

    .line 58
    iget-boolean v6, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    cmpl-float v7, p1, v6

    if-nez v7, :cond_1

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_8

    .line 59
    :cond_1
    iput-boolean v3, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    .line 60
    iput v1, p0, Lcom/oplus/camera/gl/b/e;->d:F

    .line 61
    iput v2, p0, Lcom/oplus/camera/gl/b/e;->e:F

    .line 62
    invoke-static {}, Lcom/oplus/camera/util/Util;->u()Z

    move-result v1

    .line 63
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 64
    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    float-to-int v2, v2

    if-eqz v1, :cond_2

    .line 65
    iget v4, p0, Lcom/oplus/camera/gl/b/e;->h:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oplus/camera/util/Util;->getSettingMenuPanelHeight()I

    move-result v4

    iget v5, p0, Lcom/oplus/camera/gl/b/e;->h:I

    add-int/2addr v4, v5

    :goto_0
    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p2}, Lcom/oplus/camera/ui/preview/h;->A()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oplus/camera/gl/b/e;->g:I

    goto :goto_1

    .line 68
    :cond_3
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/oplus/camera/gl/b/e;->g:I

    :goto_1
    sub-int/2addr v5, v6

    if-eqz v1, :cond_4

    .line 70
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/camera/gl/b/e;->i:I

    goto :goto_2

    .line 71
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->getScreenHeight()I

    move-result v1

    invoke-static {}, Lcom/oplus/camera/util/Util;->O()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/oplus/camera/gl/b/e;->i:I

    :goto_2
    sub-int/2addr v1, v0

    .line 73
    iget p0, p0, Lcom/oplus/camera/gl/b/e;->f:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 74
    invoke-static {p0, v5}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 75
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 76
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 78
    invoke-virtual {p2, p0, p1}, Lcom/oplus/camera/ui/preview/h;->e(II)V

    return v3

    .line 86
    :cond_5
    iget-boolean p1, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    if-eqz p1, :cond_6

    .line 87
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    .line 88
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    return v3

    .line 93
    :cond_6
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    .line 94
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    goto :goto_3

    .line 43
    :cond_7
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    .line 44
    iput-boolean v4, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    float-to-int p1, v1

    float-to-int p2, v2

    .line 46
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 47
    iput-boolean v3, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    .line 48
    iput v1, p0, Lcom/oplus/camera/gl/b/e;->d:F

    .line 49
    iput v2, p0, Lcom/oplus/camera/gl/b/e;->e:F

    :cond_8
    :goto_3
    return v4
.end method

.method public b()Z
    .locals 0

    .line 113
    iget-boolean p0, p0, Lcom/oplus/camera/gl/b/e;->c:Z

    return p0
.end method

.method public c()Z
    .locals 0

    .line 117
    iget-boolean p0, p0, Lcom/oplus/camera/gl/b/e;->b:Z

    return p0
.end method
