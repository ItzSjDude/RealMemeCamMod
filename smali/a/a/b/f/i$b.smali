.class public La/a/b/f/i$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/b/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:La/a/b/c/d;

.field public b:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public a()La/a/b/c/d;
    .locals 0

    iget-object p0, p0, La/a/b/f/i$b;->a:La/a/b/c/d;

    return-object p0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-static {v0}, La/a/b/f/f;->a(Landroid/graphics/Bitmap;)La/a/b/c/d;

    move-result-object v0

    iput-object v0, p0, La/a/b/f/i$b;->a:La/a/b/c/d;

    iget-object v0, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object v0, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, La/a/b/f/i$b;->b:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, La/a/b/f/i$b;->a:La/a/b/c/d;

    if-eqz v0, :cond_1

    iget v0, v0, La/a/b/c/d;->a:I

    invoke-static {v0}, La/a/b/f/f;->a(I)V

    iput-object v1, p0, La/a/b/f/i$b;->a:La/a/b/c/d;

    :cond_1
    return-void
.end method
