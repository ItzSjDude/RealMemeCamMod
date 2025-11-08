.class Lcom/oplus/camera/professional/n$1;
.super Ljava/lang/Object;
.source "NightPro.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/professional/n;->a(Lcom/oplus/camera/e/c;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/professional/n;


# direct methods
.method constructor <init>(Lcom/oplus/camera/professional/n;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/oplus/camera/professional/n$1;->a:Lcom/oplus/camera/professional/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/oplus/camera/professional/n$1;->a:Lcom/oplus/camera/professional/n;

    iget-object p0, p0, Lcom/oplus/camera/professional/n;->c:Lcom/oplus/camera/capmode/a;

    invoke-interface {p0}, Lcom/oplus/camera/capmode/a;->aI()V

    return-void
.end method
