.class Lcom/oplus/camera/ui/menu/shareedit/a$8;
.super Landroid/os/Handler;
.source "ShareEditThumbMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/menu/shareedit/a;-><init>(Landroid/widget/RelativeLayout;Lcom/oplus/camera/ui/control/a;Landroid/app/Activity;Lcom/oplus/camera/ComboPreferences;Lcom/oplus/camera/ui/menu/shareedit/a$b;Lcom/oplus/camera/ui/CameraUIListener;Lcom/oplus/camera/ui/control/ThumbImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/shareedit/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/menu/shareedit/a;Landroid/os/Looper;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$8;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 336
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/ui/menu/shareedit/a$8;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->b(Lcom/oplus/camera/ui/menu/shareedit/a;Z)Z

    .line 339
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/shareedit/a$8;->a:Lcom/oplus/camera/ui/menu/shareedit/a;

    invoke-virtual {p0, v0, v0}, Lcom/oplus/camera/ui/menu/shareedit/a;->a(ZZ)V

    :goto_0
    return-void
.end method
