.class public Lcom/oplus/camera/ui/q;
.super Landroid/view/ViewOutlineProvider;
.source "OplusViewOutlineProvider.java"


# instance fields
.field a:Ljava/lang/String;

.field private b:F

.field private c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    const-string v0, "Rect"

    .line 11
    iput-object v0, p0, Lcom/oplus/camera/ui/q;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/oplus/camera/ui/q;->b:F

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    return-void
.end method

.method private a(Landroid/graphics/Rect;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 37
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-ltz p0, :cond_1

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ltz p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const-string p0, "OplusViewOutlineProvider"

    const-string p1, "checkArgumentNonnegative, value is invalid"

    .line 38
    invoke-static {p0, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;F)Lcom/oplus/camera/ui/q;
    .locals 1

    const-string v0, "RoundRect"

    .line 17
    iput-object v0, p0, Lcom/oplus/camera/ui/q;->a:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/oplus/camera/ui/q;->b:F

    .line 19
    iput-object p1, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setRountRect, mOutLineRect: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusViewOutlineProvider"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/q;->a(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/oplus/camera/ui/q;->a:Ljava/lang/String;

    const-string v0, "RoundRect"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lcom/oplus/camera/ui/q;->c:Landroid/graphics/Rect;

    iget p0, p0, Lcom/oplus/camera/ui/q;->b:F

    invoke-virtual {p2, p1, p0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    :cond_0
    return-void
.end method
