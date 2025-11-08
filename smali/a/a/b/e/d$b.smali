.class public La/a/b/e/d$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/e/d;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:La/a/b/e/d;


# direct methods
.method public constructor <init>(La/a/b/e/d;II)V
    .locals 0

    iput-object p1, p0, La/a/b/e/d$b;->c:La/a/b/e/d;

    iput p2, p0, La/a/b/e/d$b;->a:I

    iput p3, p0, La/a/b/e/d$b;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, La/a/b/e/d$b;->c:La/a/b/e/d;

    invoke-static {v0}, La/a/b/e/d;->a(La/a/b/e/d;)La/a/b/c/g;

    move-result-object v0

    iget v1, p0, La/a/b/e/d$b;->a:I

    iget p0, p0, La/a/b/e/d$b;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, p0}, La/a/b/c/g;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V

    return-void
.end method
