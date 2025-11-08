.class public Lcom/oplus/camera/professional/p$a;
.super Ljava/lang/Object;
.source "PanelContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field final synthetic c:Lcom/oplus/camera/professional/p;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/professional/p;)V
    .locals 2

    .line 1068
    iput-object p1, p0, Lcom/oplus/camera/professional/p$a;->c:Lcom/oplus/camera/professional/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1069
    iput-wide v0, p0, Lcom/oplus/camera/professional/p$a;->a:J

    .line 1070
    iput-wide v0, p0, Lcom/oplus/camera/professional/p$a;->b:J

    return-void
.end method
