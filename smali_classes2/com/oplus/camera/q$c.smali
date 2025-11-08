.class public Lcom/oplus/camera/q$c;
.super Ljava/lang/Object;
.source "LocationManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/q;


# direct methods
.method public constructor <init>(Lcom/oplus/camera/q;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/oplus/camera/q$c;->a:Lcom/oplus/camera/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/oplus/camera/q$c;->a:Lcom/oplus/camera/q;

    invoke-static {p0}, Lcom/oplus/camera/q;->g(Lcom/oplus/camera/q;)V

    return-void
.end method
