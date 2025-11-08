.class Lcom/oplus/camera/ui/d$56;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10054
    iput-object p1, p0, Lcom/oplus/camera/ui/d$56;->d:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$56;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/camera/ui/d$56;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/oplus/camera/ui/d$56;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10057
    iget-object v0, p0, Lcom/oplus/camera/ui/d$56;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/oplus/camera/ui/d$56;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 10058
    iget-object v0, p0, Lcom/oplus/camera/ui/d$56;->d:Lcom/oplus/camera/ui/d;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$56;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 10060
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/ui/d$56;->d:Lcom/oplus/camera/ui/d;

    iget-object v1, p0, Lcom/oplus/camera/ui/d$56;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/camera/ui/d$56;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/camera/ui/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
