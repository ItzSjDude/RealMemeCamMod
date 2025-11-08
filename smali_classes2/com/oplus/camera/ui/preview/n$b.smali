.class Lcom/oplus/camera/ui/preview/n$b;
.super Ljava/lang/Object;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/n;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/preview/n;)V
    .locals 0

    .line 726
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n$b;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/preview/n;Lcom/oplus/camera/ui/preview/n$1;)V
    .locals 0

    .line 726
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n$b;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 730
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n$b;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-static {p0}, Lcom/oplus/camera/ui/preview/n;->e(Lcom/oplus/camera/ui/preview/n;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/oplus/camera/ui/preview/n;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
