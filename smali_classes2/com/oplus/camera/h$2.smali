.class Lcom/oplus/camera/h$2;
.super Ljava/lang/Object;
.source "CameraPermission.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/h;->a(Ljava/util/List;Landroid/content/DialogInterface$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/h;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/oplus/camera/h$2;->a:Lcom/oplus/camera/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 285
    iget-object p0, p0, Lcom/oplus/camera/h$2;->a:Lcom/oplus/camera/h;

    invoke-static {p0}, Lcom/oplus/camera/h;->a(Lcom/oplus/camera/h;)Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
