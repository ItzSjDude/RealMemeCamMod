.class public abstract La/a/b/c/b;
.super Ljava/lang/Object;


# static fields
.field public static final WATERMARK_PATH:Ljava/lang/String; = "/watermark.png"


# instance fields
.field public final a:La/a/b/d;

.field public b:La/a/b/c/g;

.field public c:I

.field public d:I

.field public e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(La/a/b/c/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/b/c/b;->b:La/a/b/c/g;

    invoke-virtual {p0}, La/a/b/c/b;->b()Lco/polarr/renderer/entities/Context;

    move-result-object v0

    iput-object p1, v0, Lco/polarr/renderer/entities/Context;->currentRender:La/a/b/c/g;

    invoke-virtual {p0}, La/a/b/c/b;->b()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->context:Landroid/content/Context;

    invoke-virtual {p0}, La/a/b/c/b;->b()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->assetManager:Landroid/content/res/AssetManager;

    invoke-virtual {p0}, La/a/b/c/b;->b()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p1, Lco/polarr/renderer/entities/Context;->resources:Landroid/content/res/Resources;

    invoke-virtual {p0}, La/a/b/c/b;->b()Lco/polarr/renderer/entities/Context;

    move-result-object p1

    iput-object p0, p1, Lco/polarr/renderer/entities/Context;->glRenderView:La/a/b/c/b;

    :try_start_0
    invoke-virtual {p0}, La/a/b/c/b;->d()Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, La/a/b/c/b;->e:Landroid/graphics/Bitmap;

    iget-object p1, p0, La/a/b/c/b;->e:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "editor/img/sample_images/logo-large.png"

    invoke-virtual {p1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, La/a/b/c/b;->e:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p1, La/a/b/d;

    invoke-direct {p1}, La/a/b/d;-><init>()V

    iput-object p1, p0, La/a/b/c/b;->a:La/a/b/d;

    return-void
.end method


# virtual methods
.method public abstract a()Landroid/content/Context;
.end method

.method public a(I)V
    .locals 2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iget-object v0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {v0}, La/a/b/d;->r()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->c(I)V

    iget-object p1, p0, La/a/b/c/b;->a:La/a/b/d;

    iget v0, p0, La/a/b/c/b;->c:I

    iget v1, p0, La/a/b/c/b;->d:I

    invoke-virtual {p1, v0, v1}, La/a/b/d;->c(II)V

    iget-object p0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->b()V

    :cond_0
    return-void
.end method

.method public a([I)V
    .locals 2

    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    iget-object v0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {v0, p1}, La/a/b/d;->a([I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, La/a/b/c/b;->a:La/a/b/d;

    iget v0, p0, La/a/b/c/b;->c:I

    iget v1, p0, La/a/b/c/b;->d:I

    invoke-virtual {p1, v0, v1}, La/a/b/d;->c(II)V

    iget-object p0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {p0}, La/a/b/d;->b()V

    :cond_0
    return-void
.end method

.method public final b()Lco/polarr/renderer/entities/Context;
    .locals 0

    sget-object p0, La/a/b/c/a;->a:Lco/polarr/renderer/entities/Context;

    return-object p0
.end method

.method public c()Landroid/content/res/Resources;
    .locals 0

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/watermark.png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public e()V
    .locals 4

    iget-object v0, p0, La/a/b/c/b;->a:La/a/b/d;

    invoke-virtual {p0}, La/a/b/c/b;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/16 v2, 0x200

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v2, v3}, La/a/b/d;->a(Landroid/content/res/Resources;IILjava/util/Map;)V

    iget-object p0, p0, La/a/b/c/b;->a:La/a/b/d;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La/a/b/d;->k(Z)V

    return-void
.end method

.method public f()V
    .locals 0

    iget-object p0, p0, La/a/b/c/b;->b:La/a/b/c/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, La/a/b/c/g;->c()V

    :cond_0
    return-void
.end method
