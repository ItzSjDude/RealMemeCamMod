.class Lcom/oplus/camera/ui/preview/a/u$1;
.super Ljava/lang/Object;
.source "PreviewEffectProcessImpl.java"

# interfaces
.implements Lcom/oplus/camera/ui/preview/a/y$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/a/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/a/u;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/preview/a/u;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)I
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/camera/ui/preview/a/t$a;->a(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public a(IIIIIZJ)Lcom/oplus/camera/u/a;
    .locals 10

    move-object v0, p0

    .line 92
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 93
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/oplus/camera/ui/preview/a/t$a;->a(IIIIIZJ)Lcom/oplus/camera/u/a;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t$a;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t$a;->a(I)V

    :cond_0
    return-void
.end method

.method public a(IIZZZZZZI)V
    .locals 11

    move-object v0, p0

    .line 110
    iget-object v1, v0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v1}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    iget-object v0, v0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v1

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/oplus/camera/ui/preview/a/t$a;->a(IIZZZZZZI)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oplus/camera/u/a;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t$a;->a(Lcom/oplus/camera/u/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/camera/ui/preview/a/t$a;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()[Landroid/graphics/Rect;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {v0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/a/u$1;->a:Lcom/oplus/camera/ui/preview/a/u;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/a/u;->a(Lcom/oplus/camera/ui/preview/a/u;)Lcom/oplus/camera/ui/preview/a/t$a;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/preview/a/t$a;->a()[Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
