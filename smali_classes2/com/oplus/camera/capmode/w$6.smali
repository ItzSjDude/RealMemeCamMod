.class Lcom/oplus/camera/capmode/w$6;
.super Ljava/lang/Object;
.source "VideoMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/w;->handleStartError(ZZ)V
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

    .line 1277
    iput-object p1, p0, Lcom/oplus/camera/capmode/w$6;->a:Lcom/oplus/camera/capmode/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1280
    iget-object p0, p0, Lcom/oplus/camera/capmode/w$6;->a:Lcom/oplus/camera/capmode/w;

    iget-object p0, p0, Lcom/oplus/camera/capmode/w;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
