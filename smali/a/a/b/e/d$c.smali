.class public La/a/b/e/d$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/e/d;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/e/d;


# direct methods
.method public constructor <init>(La/a/b/e/d;)V
    .locals 0

    iput-object p1, p0, La/a/b/e/d$c;->a:La/a/b/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, La/a/b/e/d$c;->a:La/a/b/e/d;

    invoke-static {p0}, La/a/b/e/d;->a(La/a/b/e/d;)La/a/b/c/g;

    move-result-object p0

    invoke-virtual {p0}, La/a/b/c/g;->l()V

    return-void
.end method
