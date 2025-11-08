.class Lcom/oplus/camera/photo3d/d$a$1;
.super Ljava/lang/Object;
.source "ThreeDVideoHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/photo3d/d$a;->onInfo(Ljava/lang/Object;II)V
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

    .line 360
    iput-object p1, p0, Lcom/oplus/camera/photo3d/d$a$1;->b:Lcom/oplus/camera/photo3d/d$a;

    iput p2, p0, Lcom/oplus/camera/photo3d/d$a$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 363
    iget v0, p0, Lcom/oplus/camera/photo3d/d$a$1;->a:I

    const/16 v1, 0x320

    if-eq v1, v0, :cond_0

    if-eq v1, v0, :cond_0

    const/16 v1, 0x322

    if-ne v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/photo3d/d$a$1;->b:Lcom/oplus/camera/photo3d/d$a;

    iget-object v0, v0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    .line 366
    invoke-static {v0}, Lcom/oplus/camera/photo3d/d;->a(Lcom/oplus/camera/photo3d/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 367
    iget-object p0, p0, Lcom/oplus/camera/photo3d/d$a$1;->b:Lcom/oplus/camera/photo3d/d$a;

    iget-object p0, p0, Lcom/oplus/camera/photo3d/d$a;->a:Lcom/oplus/camera/photo3d/d;

    invoke-virtual {p0}, Lcom/oplus/camera/photo3d/d;->c()V

    :cond_1
    return-void
.end method
