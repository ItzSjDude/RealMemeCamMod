.class Lcom/oplus/camera/professional/v$1;
.super Ljava/lang/Object;
.source "ProfessionalCapMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/v;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:Lcom/oplus/camera/professional/v;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/v;[BIJ)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/oplus/camera/professional/v$1;->d:Lcom/oplus/camera/professional/v;

    iput-object p2, p0, Lcom/oplus/camera/professional/v$1;->a:[B

    iput p3, p0, Lcom/oplus/camera/professional/v$1;->b:I

    iput-wide p4, p0, Lcom/oplus/camera/professional/v$1;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 333
    iget-object v0, p0, Lcom/oplus/camera/professional/v$1;->d:Lcom/oplus/camera/professional/v;

    iget-object v1, p0, Lcom/oplus/camera/professional/v$1;->a:[B

    iget v2, p0, Lcom/oplus/camera/professional/v$1;->b:I

    invoke-static {v2}, Lcom/oplus/camera/util/Util;->a(I)Ljava/lang/String;

    move-result-object v4

    iget-wide v8, p0, Lcom/oplus/camera/professional/v$1;->c:J

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v0 .. v10}, Lcom/oplus/camera/professional/v;->pictureTakenCallback([BIILjava/lang/String;ZZZJI)V

    return-void
.end method
