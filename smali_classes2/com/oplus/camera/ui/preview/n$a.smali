.class Lcom/oplus/camera/ui/preview/n$a;
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
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/preview/n;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/preview/n;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/n$a;->a:Lcom/oplus/camera/ui/preview/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/preview/n;Lcom/oplus/camera/ui/preview/n$1;)V
    .locals 0

    .line 734
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/preview/n$a;-><init>(Lcom/oplus/camera/ui/preview/n;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/oplus/camera/ui/preview/n$a;->a:Lcom/oplus/camera/ui/preview/n;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oplus/camera/ui/preview/n;->setVisibility(I)V

    .line 738
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/n$a;->a:Lcom/oplus/camera/ui/preview/n;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oplus/camera/ui/preview/n;->a(Lcom/oplus/camera/ui/preview/n;I)I

    return-void
.end method
