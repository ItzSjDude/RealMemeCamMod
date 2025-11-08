.class Lcom/oplus/camera/timelapsepro/h$2;
.super Ljava/lang/Object;
.source "TimeLapseProMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/timelapsepro/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/timelapsepro/h;


# direct methods
.method constructor <init>(Lcom/oplus/camera/timelapsepro/h;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/oplus/camera/timelapsepro/h$2;->a:Lcom/oplus/camera/timelapsepro/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 304
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0903c0

    const-string v1, "1"

    if-eq p1, v0, :cond_1

    const v0, 0x7f0903c3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$2;->a:Lcom/oplus/camera/timelapsepro/h;

    const-string v0, "84"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$2;->a:Lcom/oplus/camera/timelapsepro/h;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;ZZZZZ)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/oplus/camera/timelapsepro/h$2;->a:Lcom/oplus/camera/timelapsepro/h;

    const-string v0, "85"

    invoke-static {p1, v0, v1}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v2, p0, Lcom/oplus/camera/timelapsepro/h$2;->a:Lcom/oplus/camera/timelapsepro/h;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/oplus/camera/timelapsepro/h;->a(Lcom/oplus/camera/timelapsepro/h;ZZZZZ)V

    :goto_0
    return-void
.end method
