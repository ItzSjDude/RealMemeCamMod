.class Lcom/oplus/camera/filmvideomode/k$1;
.super Ljava/lang/Object;
.source "FilmParamsContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/k;->setParamsBarEnable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/filmvideomode/k;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/k;Z)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/k$1;->b:Lcom/oplus/camera/filmvideomode/k;

    iput-boolean p2, p0, Lcom/oplus/camera/filmvideomode/k$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/k$1;->b:Lcom/oplus/camera/filmvideomode/k;

    invoke-static {v0}, Lcom/oplus/camera/filmvideomode/k;->a(Lcom/oplus/camera/filmvideomode/k;)Lcom/oplus/camera/filmvideomode/i;

    move-result-object v0

    iget-boolean p0, p0, Lcom/oplus/camera/filmvideomode/k$1;->a:Z

    invoke-virtual {v0, p0}, Lcom/oplus/camera/filmvideomode/i;->setEnabled(Z)V

    return-void
.end method
