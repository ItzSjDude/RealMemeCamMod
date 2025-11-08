.class public Lcom/oplus/camera/util/n$b;
.super Ljava/lang/Object;
.source "ThumbnailCacheUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/util/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 497
    iget p0, p0, Lcom/oplus/camera/util/n$b;->b:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 501
    iput p1, p0, Lcom/oplus/camera/util/n$b;->b:I

    return-void
.end method

.method public a(J)V
    .locals 0

    .line 509
    iput-wide p1, p0, Lcom/oplus/camera/util/n$b;->a:J

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 517
    iput-object p1, p0, Lcom/oplus/camera/util/n$b;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public b()J
    .locals 2

    .line 505
    iget-wide v0, p0, Lcom/oplus/camera/util/n$b;->a:J

    return-wide v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 0

    .line 513
    iget-object p0, p0, Lcom/oplus/camera/util/n$b;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method
