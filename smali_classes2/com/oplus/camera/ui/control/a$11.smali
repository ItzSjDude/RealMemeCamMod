.class Lcom/oplus/camera/ui/control/a$11;
.super Ljava/lang/Object;
.source "CameraControlUI.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/shareedit/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/control/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/control/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/control/a;)V
    .locals 0

    .line 894
    iput-object p1, p0, Lcom/oplus/camera/ui/control/a$11;->a:Lcom/oplus/camera/ui/control/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 897
    iget-object p0, p0, Lcom/oplus/camera/ui/control/a$11;->a:Lcom/oplus/camera/ui/control/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/control/a;->d(Lcom/oplus/camera/ui/control/a;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/oplus/camera/ui/CameraUIListener;->bb()V

    return-void
.end method
