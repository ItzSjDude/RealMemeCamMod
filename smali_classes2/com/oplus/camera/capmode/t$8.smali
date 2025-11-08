.class Lcom/oplus/camera/capmode/t$8;
.super Ljava/lang/Object;
.source "StickerMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/capmode/t;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/capmode/t;


# direct methods
.method constructor <init>(Lcom/oplus/camera/capmode/t;)V
    .locals 0

    .line 1702
    iput-object p1, p0, Lcom/oplus/camera/capmode/t$8;->a:Lcom/oplus/camera/capmode/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1705
    iget-object v0, p0, Lcom/oplus/camera/capmode/t$8;->a:Lcom/oplus/camera/capmode/t;

    const/16 p0, 0x100

    invoke-static {p0}, Lcom/oplus/camera/util/Util;->a(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v0 .. v9}, Lcom/oplus/camera/capmode/t;->pictureTakenCallback([BIILjava/lang/String;ZZJI)V

    return-void
.end method
