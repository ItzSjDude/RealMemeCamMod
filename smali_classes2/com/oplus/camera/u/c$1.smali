.class Lcom/oplus/camera/u/c$1;
.super Ljava/lang/Object;
.source "SuperTextEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/u/c;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/oplus/camera/u/c;


# direct methods
.method constructor <init>(Lcom/oplus/camera/u/c;Z)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/oplus/camera/u/c$1;->b:Lcom/oplus/camera/u/c;

    iput-boolean p2, p0, Lcom/oplus/camera/u/c$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/oplus/camera/u/c$1;->b:Lcom/oplus/camera/u/c;

    iget-boolean p0, p0, Lcom/oplus/camera/u/c$1;->a:Z

    invoke-static {v0, p0}, Lcom/oplus/camera/u/c;->a(Lcom/oplus/camera/u/c;Z)V

    return-void
.end method
