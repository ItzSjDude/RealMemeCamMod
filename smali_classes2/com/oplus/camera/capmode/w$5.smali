.class Lcom/oplus/camera/capmode/w$5;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Lcom/oplus/camera/util/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->onVideoShutterButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/w;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/w;)V
    .locals 0

    .line 1181
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$5;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/app/f;)V
    .locals 0

    .line 1184
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$5;->a:Lcom/oplus/camera/capmode/w;

    invoke-static {p0, p1}, Lcom/oplus/camera/capmode/w;->access$802(Lcom/oplus/camera/capmode/w;Landroidx/appcompat/app/f;)Landroidx/appcompat/app/f;

    return-void
.end method

.method public a(Landroidx/appcompat/app/f;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1189
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    invoke-virtual {p1}, Landroidx/appcompat/app/f;->dismiss()V

    :cond_0
    if-eqz p2, :cond_1

    .line 1194
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$5;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    const-string p1, "android.permission.RECORD_AUDIO"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method
