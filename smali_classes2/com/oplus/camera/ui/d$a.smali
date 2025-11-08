.class Lcom/oplus/camera/ui/d$a;
.super Ljava/lang/Object;
.source "CameraUIManager.java"

# interfaces
.implements Lcom/oplus/camera/ui/modepanel/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/d;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/d;)V
    .locals 0

    .line 9404
    iput-object p1, p0, Lcom/oplus/camera/ui/d$a;->a:Lcom/oplus/camera/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/d;Lcom/oplus/camera/ui/d$1;)V
    .locals 0

    .line 9404
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/d$a;-><init>(Lcom/oplus/camera/ui/d;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 9407
    iget-object p0, p0, Lcom/oplus/camera/ui/d$a;->a:Lcom/oplus/camera/ui/d;

    invoke-static {p0}, Lcom/oplus/camera/ui/d;->i(Lcom/oplus/camera/ui/d;)Lcom/oplus/camera/ui/CameraUIListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/oplus/camera/ui/CameraUIListener;->l(Ljava/lang/String;)V

    return-void
.end method
