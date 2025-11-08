.class public Lcom/oplus/camera/professional/g$a;
.super Ljava/lang/Object;
.source "HSPanelContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/professional/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:J

.field public b:J

.field final synthetic c:Lcom/oplus/camera/professional/g;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/professional/g;)V
    .locals 2

    .line 1041
    iput-object p1, p0, Lcom/oplus/camera/professional/g$a;->c:Lcom/oplus/camera/professional/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 1042
    iput-wide v0, p0, Lcom/oplus/camera/professional/g$a;->a:J

    .line 1043
    iput-wide v0, p0, Lcom/oplus/camera/professional/g$a;->b:J

    return-void
.end method
