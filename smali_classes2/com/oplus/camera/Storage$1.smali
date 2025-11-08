.class Lcom/oplus/camera/Storage$1;
.super Ljava/lang/Object;
.source "Storage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/Storage;->b(Lcom/oplus/camera/Storage$CameraPicture;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/oplus/camera/Storage$CameraPicture;


# direct methods
.method constructor <init>(Landroid/net/Uri;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/oplus/camera/Storage$1;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/oplus/camera/Storage$1;->b:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1270
    iget-object v0, p0, Lcom/oplus/camera/Storage$1;->a:Landroid/net/Uri;

    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oplus/camera/Storage;->a(Landroid/net/Uri;Landroid/content/ContentResolver;)V

    .line 1272
    iget-object v0, p0, Lcom/oplus/camera/Storage$1;->b:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v0, v0, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    if-eqz v0, :cond_0

    .line 1273
    iget-object p0, p0, Lcom/oplus/camera/Storage$1;->b:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->V:Lcom/oplus/camera/capmode/f;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/f;->a()V

    :cond_0
    return-void
.end method
