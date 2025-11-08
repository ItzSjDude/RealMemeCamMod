.class Lcom/oplus/camera/ui/d$28;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ui/d;->a(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:J

.field final synthetic c:Lcom/oplus/camera/ui/d;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ui/d;Ljava/util/List;J)V
    .locals 0

    .line 6742
    iput-object p1, p0, Lcom/oplus/camera/ui/d$28;->c:Lcom/oplus/camera/ui/d;

    iput-object p2, p0, Lcom/oplus/camera/ui/d$28;->a:Ljava/util/List;

    iput-wide p3, p0, Lcom/oplus/camera/ui/d$28;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 6745
    iget-object v0, p0, Lcom/oplus/camera/ui/d$28;->c:Lcom/oplus/camera/ui/d;

    invoke-virtual {v0}, Lcom/oplus/camera/ui/d;->cR()V

    .line 6746
    iget-object v0, p0, Lcom/oplus/camera/ui/d$28;->c:Lcom/oplus/camera/ui/d;

    invoke-static {v0}, Lcom/oplus/camera/ui/d;->p(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/camera/ui/d$28;->a:Ljava/util/List;

    iget-wide v2, p0, Lcom/oplus/camera/ui/d$28;->b:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/camera/ui/a/a;->a(Ljava/util/List;J)V

    return-void
.end method
