.class Lcom/oplus/camera/ui/menu/shareedit/a$5$1;
.super Ljava/lang/Object;
.source "ShareEditThumbMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a$5;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a$5;)V
    .locals 0

    .line 1428
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1431
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$5;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1432
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$5;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(Lcom/oplus/camera/ui/menu/shareedit/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oplus/camera/ui/CameraUIListener;->br()V

    .line 1435
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5$1;->a:Lcom/oplus/camera/ui/menu/shareedit/a$5;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$5;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->f(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z

    return-void
.end method
