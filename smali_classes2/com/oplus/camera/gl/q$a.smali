.class abstract Lcom/oplus/camera/gl/q$a;
.super Ljava/lang/Object;
.source "OplusGLSurfaceView.java"

# interfaces
.implements Lcom/oplus/camera/gl/q$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/gl/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field protected a:[I

.field final synthetic b:Lcom/oplus/camera/gl/q;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/gl/q;[I)V
    .locals 0

    .line 666
    iput-object p1, p0, Lcom/oplus/camera/gl/q$a;->b:Lcom/oplus/camera/gl/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 664
    iput-object p1, p0, Lcom/oplus/camera/gl/q$a;->a:[I

    .line 667
    invoke-direct {p0, p2}, Lcom/oplus/camera/gl/q$a;->a([I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/camera/gl/q$a;->a:[I

    return-void
.end method

.method private a([I)[I
    .locals 5

    .line 702
    iget-object v0, p0, Lcom/oplus/camera/gl/q$a;->b:Lcom/oplus/camera/gl/q;

    invoke-static {v0}, Lcom/oplus/camera/gl/q;->a(Lcom/oplus/camera/gl/q;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/gl/q$a;->b:Lcom/oplus/camera/gl/q;

    .line 703
    invoke-static {v0}, Lcom/oplus/camera/gl/q;->a(Lcom/oplus/camera/gl/q;)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return-object p1

    .line 710
    :cond_0
    array-length v0, p1

    add-int/lit8 v2, v0, 0x2

    .line 711
    new-array v2, v2, [I

    add-int/lit8 v3, v0, -0x1

    const/4 v4, 0x0

    .line 712
    invoke-static {p1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p1, 0x3040

    .line 713
    aput p1, v2, v3

    .line 715
    iget-object p0, p0, Lcom/oplus/camera/gl/q$a;->b:Lcom/oplus/camera/gl/q;

    invoke-static {p0}, Lcom/oplus/camera/gl/q;->a(Lcom/oplus/camera/gl/q;)I

    move-result p0

    if-ne p0, v1, :cond_1

    const/4 p0, 0x4

    .line 716
    aput p0, v2, v0

    goto :goto_0

    :cond_1
    const/16 p0, 0x40

    .line 718
    aput p0, v2, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 p0, 0x3038

    .line 721
    aput p0, v2, v0

    return-object v2
.end method
