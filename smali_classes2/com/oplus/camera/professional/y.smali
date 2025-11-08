.class public Lcom/oplus/camera/professional/y;
.super Landroid/widget/RelativeLayout;
.source "RotateView.java"


# instance fields
.field public a:Z

.field protected b:I

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/oplus/camera/professional/y;->a:Z

    const/4 v0, -0x1

    .line 30
    iput v0, p0, Lcom/oplus/camera/professional/y;->b:I

    .line 43
    iput-object p1, p0, Lcom/oplus/camera/professional/y;->c:Landroid/content/Context;

    .line 44
    iput p2, p0, Lcom/oplus/camera/professional/y;->b:I

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RotateView mOrientation is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/oplus/camera/professional/y;->b:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RotateView"

    invoke-static {p2, p1}, Lcom/oplus/camera/e;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget p1, p0, Lcom/oplus/camera/professional/y;->b:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/oplus/camera/professional/y;->a(IZ)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0

    return-void
.end method

.method public getTag(I)Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/oplus/camera/professional/y;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/oplus/camera/professional/y;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 66
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public setRotateViewClickable(Z)V
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/oplus/camera/professional/y;->a:Z

    return-void
.end method
