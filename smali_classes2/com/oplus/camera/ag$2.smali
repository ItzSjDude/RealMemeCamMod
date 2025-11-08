.class Lcom/oplus/camera/ag$2;
.super Lcom/oplus/camera/b/a;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/ag;->K()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ag;


# direct methods
.method constructor <init>(Lcom/oplus/camera/ag;)V
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/oplus/camera/ag$2;->a:Lcom/oplus/camera/ag;

    invoke-direct {p0}, Lcom/oplus/camera/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1223
    iget-object p0, p0, Lcom/oplus/camera/ag$2;->a:Lcom/oplus/camera/ag;

    const/16 p1, 0xc

    invoke-static {p0, p1}, Lcom/oplus/camera/ag;->a(Lcom/oplus/camera/ag;I)V

    return-void
.end method
