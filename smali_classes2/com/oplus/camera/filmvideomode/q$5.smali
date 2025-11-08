.class Lcom/oplus/camera/filmvideomode/q$5;
.super Ljava/lang/Object;
.source "FilmUIControlV2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/q;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/q;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/q;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/q$5;->a:Lcom/oplus/camera/filmvideomode/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 660
    iget-object v0, p0, Lcom/oplus/camera/filmvideomode/q$5;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object v0, v0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    if-eqz v0, :cond_0

    .line 661
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q$5;->a:Lcom/oplus/camera/filmvideomode/q;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/q;->u:Lcom/oplus/camera/filmvideomode/m;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/m;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
