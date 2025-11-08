.class Lcom/oplus/camera/aa$a;
.super Ljava/lang/Object;
.source "QrCodeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/oplus/camera/o/b;

.field final synthetic b:Lcom/oplus/camera/aa;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/aa;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/oplus/camera/aa$a;->b:Lcom/oplus/camera/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 975
    iput-object p1, p0, Lcom/oplus/camera/aa$a;->a:Lcom/oplus/camera/o/b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/aa;Lcom/oplus/camera/aa$1;)V
    .locals 0

    .line 974
    invoke-direct {p0, p1}, Lcom/oplus/camera/aa$a;-><init>(Lcom/oplus/camera/aa;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/o/b;)V
    .locals 8

    .line 978
    new-instance v7, Lcom/oplus/camera/o/b;

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->c()Lcom/oplus/camera/o/b$a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 979
    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->d()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->e()I

    move-result v5

    invoke-virtual {p1}, Lcom/oplus/camera/o/b;->f()I

    move-result v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/oplus/camera/o/b;-><init>(Ljava/lang/String;Lcom/oplus/camera/o/b$a;Ljava/lang/String;Landroid/graphics/RectF;II)V

    iput-object v7, p0, Lcom/oplus/camera/aa$a;->a:Lcom/oplus/camera/o/b;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/oplus/camera/aa$a;->a:Lcom/oplus/camera/o/b;

    if-eqz p0, :cond_0

    .line 984
    invoke-virtual {p0, p1}, Lcom/oplus/camera/o/b;->a(Z)V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/oplus/camera/aa$a;->a:Lcom/oplus/camera/o/b;

    if-eqz v0, :cond_0

    .line 991
    iget-object v1, p0, Lcom/oplus/camera/aa$a;->b:Lcom/oplus/camera/aa;

    invoke-static {v1, v0}, Lcom/oplus/camera/aa;->c(Lcom/oplus/camera/aa;Lcom/oplus/camera/o/b;)V

    const/4 v0, 0x0

    .line 992
    iput-object v0, p0, Lcom/oplus/camera/aa$a;->a:Lcom/oplus/camera/o/b;

    :cond_0
    return-void
.end method
