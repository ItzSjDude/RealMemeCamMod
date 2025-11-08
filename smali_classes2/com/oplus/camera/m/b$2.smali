.class Lcom/oplus/camera/m/b$2;
.super Ljava/lang/Object;
.source "ImageSaverThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/m/b;->b(Lcom/oplus/camera/Storage$CameraPicture;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/Storage$CameraPicture;

.field final synthetic b:Lcom/oplus/camera/m/b;


# direct methods
.method constructor <init>(Lcom/oplus/camera/m/b;Lcom/oplus/camera/Storage$CameraPicture;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/oplus/camera/m/b$2;->b:Lcom/oplus/camera/m/b;

    iput-object p2, p0, Lcom/oplus/camera/m/b$2;->a:Lcom/oplus/camera/Storage$CameraPicture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 255
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/m/b$2;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object v1, v1, Lcom/oplus/camera/Storage$CameraPicture;->c:Landroid/net/Uri;

    iget-object p0, p0, Lcom/oplus/camera/m/b$2;->a:Lcom/oplus/camera/Storage$CameraPicture;

    iget-object p0, p0, Lcom/oplus/camera/Storage$CameraPicture;->mPath:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oplus/camera/util/Util;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method
