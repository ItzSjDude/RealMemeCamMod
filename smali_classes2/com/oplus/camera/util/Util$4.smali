.class Lcom/oplus/camera/util/Util$4;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/util/Util;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1128
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancleOpenCameraFailDialog(), sOpenCameraFailDialog: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oplus/camera/util/Util;->aV()Lcom/coui/appcompat/dialog/app/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Util"

    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-static {}, Lcom/oplus/camera/util/Util;->aV()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1131
    invoke-static {}, Lcom/oplus/camera/util/Util;->aV()Lcom/coui/appcompat/dialog/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/dialog/app/b;->cancel()V

    const/4 p0, 0x0

    .line 1132
    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(Lcom/coui/appcompat/dialog/app/b;)Lcom/coui/appcompat/dialog/app/b;

    :cond_0
    return-void
.end method
