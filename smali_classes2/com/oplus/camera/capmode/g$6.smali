.class Lcom/oplus/camera/capmode/g$6;
.super Ljava/lang/Object;
.source "DoubleExposureMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/capmode/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/g;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/g;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 143
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_REPLAY:Lcom/oplus/camera/capmode/g$a;

    iget-object p2, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    const-string p2, "db_expo_page2"

    const-string v0, "exit"

    invoke-virtual {p1, p2, v0}, Lcom/oplus/camera/capmode/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    sget-object p1, Lcom/oplus/camera/capmode/g$a;->FIRST_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object p2, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    if-eq p1, p2, :cond_1

    sget-object p1, Lcom/oplus/camera/capmode/g$a;->SECOND_STAGE_PAUSED:Lcom/oplus/camera/capmode/g$a;

    iget-object p2, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p2}, Lcom/oplus/camera/capmode/g;->f()Lcom/oplus/camera/capmode/g$a;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 149
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    invoke-virtual {p1}, Lcom/oplus/camera/capmode/g;->stopShortVideoRecording()V

    .line 152
    :cond_2
    iget-object p0, p0, Lcom/oplus/camera/capmode/g$6;->a:Lcom/oplus/camera/capmode/g;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oplus/camera/capmode/g;->cancelOp(Z)V

    return-void
.end method
