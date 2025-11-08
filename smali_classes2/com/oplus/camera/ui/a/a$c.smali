.class Lcom/oplus/camera/ui/a/a$c;
.super Ljava/lang/Object;
.source "HintManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field final synthetic b:Lcom/oplus/camera/ui/a/a;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/ui/a/a;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/oplus/camera/ui/a/a$c;->b:Lcom/oplus/camera/ui/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/oplus/camera/ui/a/a$c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/oplus/camera/ui/a/a$c;->b:Lcom/oplus/camera/ui/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oplus/camera/ui/a/a$c;->b:Lcom/oplus/camera/ui/a/a;

    invoke-static {v0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    iget-object p0, p0, Lcom/oplus/camera/ui/a/a$c;->b:Lcom/oplus/camera/ui/a/a;

    invoke-static {p0}, Lcom/oplus/camera/ui/a/a;->a(Lcom/oplus/camera/ui/a/a;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;

    const v1, 0x7f0901d2

    .line 112
    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    .line 115
    instance-of v2, v1, [I

    if-eqz v2, :cond_1

    check-cast v1, [I

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    .line 116
    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/oplus/camera/ui/camerascreenhint/CameraScreenHintView;->a(II)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
