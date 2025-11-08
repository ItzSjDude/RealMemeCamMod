.class Lcom/oplus/camera/photo3d/d$a$3;
.super Ljava/lang/Object;
.source "ThreeDVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/d$a;->onException(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/oplus/camera/photo3d/d$a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/photo3d/d$a;I)V
    .locals 0

    .line 393
    iput-object p1, p0, Lcom/oplus/camera/photo3d/d$a$3;->b:Lcom/oplus/camera/photo3d/d$a;

    iput p2, p0, Lcom/oplus/camera/photo3d/d$a$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 396
    iget v0, p0, Lcom/oplus/camera/photo3d/d$a$3;->a:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/photo3d/d$a$3;->b:Lcom/oplus/camera/photo3d/d$a;

    iget-object v0, v0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    .line 397
    invoke-static {v0}, Lcom/oplus/camera/photo3d/d;->a(Lcom/oplus/camera/photo3d/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d$a$3;->b:Lcom/oplus/camera/photo3d/d$a;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/d;->c()V

    :cond_0
    return-void
.end method
