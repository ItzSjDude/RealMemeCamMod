.class public Lcom/oplus/camera/ui/a$b;
.super Ljava/lang/Object;
.source "BackgroundSplitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/ref/WeakReference;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;)V
    .locals 2

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 454
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a$b;->a:Z

    const/4 v1, 0x0

    .line 455
    iput-object v1, p0, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    .line 456
    iput-object v1, p0, Lcom/oplus/camera/ui/a$b;->c:Ljava/lang/String;

    .line 459
    iput-boolean v0, p0, Lcom/oplus/camera/ui/a$b;->a:Z

    .line 460
    iput-object p1, p0, Lcom/oplus/camera/ui/a$b;->b:Ljava/lang/ref/WeakReference;

    .line 461
    iput-object p2, p0, Lcom/oplus/camera/ui/a$b;->c:Ljava/lang/String;

    return-void
.end method
