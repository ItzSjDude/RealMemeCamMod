.class public interface abstract Lcom/b/a/h;
.super Ljava/lang/Object;
.source "RenderEngine.java"


# virtual methods
.method public abstract a(Lcom/b/a/a/d;ZLcom/b/a/a/a;)Lcom/b/a/a/j;
.end method

.method public abstract a(Landroid/view/Surface;II)Lcom/b/a/h;
.end method

.method public abstract a(Lcom/b/a/k;)Lcom/b/a/h;
.end method

.method public abstract a()V
.end method

.method public a(I)V
    .locals 0

    const/4 p0, 0x0

    .line 61
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/16 p1, 0xa

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/b/a/a;->a:I

    return-void
.end method

.method public abstract b()V
.end method
