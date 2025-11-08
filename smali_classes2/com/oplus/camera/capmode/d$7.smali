.class Lcom/oplus/camera/capmode/d$7;
.super Ljava/lang/Object;
.source "CommonCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/d;->initGoogleLensIcon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/d;)V
    .locals 0

    .line 4270
    iput-object p1, p0, Lcom/oplus/camera/capmode/d$7;->a:Lcom/oplus/camera/capmode/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 4273
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$7;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p1}, Lcom/oplus/camera/capmode/d;->access$1800(Lcom/oplus/camera/capmode/d;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4275
    :try_start_0
    iget-object p1, p0, Lcom/oplus/camera/capmode/d$7;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p1}, Lcom/oplus/camera/capmode/d;->access$1800(Lcom/oplus/camera/capmode/d;)Lcom/google/lens/sdk/LensApi;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/camera/capmode/d$7;->a:Lcom/oplus/camera/capmode/d;

    iget-object v0, v0, Lcom/oplus/camera/capmode/d;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/google/lens/sdk/LensApi;->launchLensActivity(Landroid/app/Activity;)V

    .line 4276
    iget-object p0, p0, Lcom/oplus/camera/capmode/d$7;->a:Lcom/oplus/camera/capmode/d;

    invoke-static {p0}, Lcom/oplus/camera/capmode/d;->access$1900(Lcom/oplus/camera/capmode/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4278
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
