.class Lcom/oplus/camera/professional/r$6;
.super Ljava/lang/Object;
.source "ProMenuManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/r;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/r;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/r;)V
    .locals 0

    .line 1064
    iput-object p1, p0, Lcom/oplus/camera/professional/r$6;->a:Lcom/oplus/camera/professional/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1067
    iget-object v0, p0, Lcom/oplus/camera/professional/r$6;->a:Lcom/oplus/camera/professional/r;

    invoke-virtual {v0}, Lcom/oplus/camera/professional/r;->n()V

    .line 1068
    iget-object p0, p0, Lcom/oplus/camera/professional/r$6;->a:Lcom/oplus/camera/professional/r;

    invoke-static {p0}, Lcom/oplus/camera/professional/r;->e(Lcom/oplus/camera/professional/r;)V

    return-void
.end method
