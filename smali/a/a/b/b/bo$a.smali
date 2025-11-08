.class public La/a/b/b/bo$a;
.super Ljava/lang/Object;

# interfaces
.implements La/a/b/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La/a/b/b/bo;->z()La/a/b/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La/a/b/b/bo;


# direct methods
.method public constructor <init>(La/a/b/b/bo;)V
    .locals 0

    iput-object p1, p0, La/a/b/b/bo$a;->a:La/a/b/b/bo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    invoke-static {}, La/a/b/b/bo;->m()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, La/a/b/b/bo;->m()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    :try_start_1
    iget-object p0, p0, La/a/b/b/bo$a;->a:La/a/b/b/bo;

    invoke-static {p0}, La/a/b/b/bo;->a(La/a/b/b/bo;)Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :catch_1
    :goto_1
    return-object v1
.end method
