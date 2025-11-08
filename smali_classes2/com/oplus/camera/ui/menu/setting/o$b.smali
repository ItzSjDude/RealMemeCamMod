.class Lcom/oplus/camera/ui/menu/setting/o$b;
.super Ljava/lang/Thread;
.source "CameraSettingUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/setting/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/setting/o;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/menu/setting/o;)V
    .locals 0

    .line 964
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->a:Lcom/oplus/camera/ui/menu/setting/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 962
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->b:Z

    .line 965
    iput-boolean p1, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->b:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 976
    iput-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->b:Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 970
    iget-boolean v0, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->b:Z

    if-nez v0, :cond_0

    .line 971
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/setting/o$b;->a:Lcom/oplus/camera/ui/menu/setting/o;

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/setting/o;->g:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/menu/setting/o;->a(Lcom/oplus/camera/ui/menu/setting/o;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
