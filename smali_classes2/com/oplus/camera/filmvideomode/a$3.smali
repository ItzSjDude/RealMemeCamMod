.class Lcom/oplus/camera/filmvideomode/a$3;
.super Ljava/lang/Object;
.source "BaseFilmUIControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/filmvideomode/a;->f(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/filmvideomode/a;


# direct methods
.method constructor <init>(Lcom/oplus/camera/filmvideomode/a;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/oplus/camera/filmvideomode/a$3;->a:Lcom/oplus/camera/filmvideomode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a$3;->a:Lcom/oplus/camera/filmvideomode/a;

    iget-object p0, p0, Lcom/oplus/camera/filmvideomode/a;->a:Lcom/oplus/camera/filmvideomode/k;

    invoke-virtual {p0}, Lcom/oplus/camera/filmvideomode/k;->g()V

    return-void
.end method
