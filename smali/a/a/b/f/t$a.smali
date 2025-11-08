.class public La/a/b/f/t$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/f/t;


# direct methods
.method public constructor <init>(La/a/b/f/t;)V
    .locals 0

    iput-object p1, p0, La/a/b/f/t$a;->a:La/a/b/f/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, La/a/b/f/t$a;->a:La/a/b/f/t;

    iget-object v1, v0, La/a/b/f/t;->b:[F

    if-eqz v1, :cond_0

    sget-object v2, La/a/b/c/a;->a:Lco/polarr/renderer/entities/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, La/a/b/f/t;->a(Lco/polarr/renderer/entities/Context;[FZ)V

    :cond_0
    iget-object p0, p0, La/a/b/f/t$a;->a:La/a/b/f/t;

    iget-boolean v0, p0, La/a/b/f/t;->d:Z

    if-nez v0, :cond_1

    invoke-static {p0}, La/a/b/f/t;->a(La/a/b/f/t;)V

    goto :goto_0

    :cond_1
    sget-object p0, La/a/b/c/a;->a:Lco/polarr/renderer/entities/Context;

    iget-object p0, p0, Lco/polarr/renderer/entities/Context;->glRenderView:La/a/b/c/b;

    invoke-virtual {p0}, La/a/b/c/b;->f()V

    :goto_0
    return-void
.end method
